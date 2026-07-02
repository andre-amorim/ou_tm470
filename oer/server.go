package main

import (
	"fmt"
	"html/template"
	"log"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
)

type UnitInfo struct {
	ID           string
	Title        string
	MDPath       string
	XMLPath      string
	HTMLPath     string
	LastModified string
	Exists       bool
	TaitClass    string
}

const dashboardHTML = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🏰 nixB OER Laboratory Dashboard</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-primary: #0b0f19;
            --bg-secondary: #131a2c;
            --accent-blue: #3b82f6;
            --accent-green: #10b981;
            --accent-purple: #8b5cf6;
            --text-primary: #f3f4f6;
            --text-secondary: #9ca3af;
            --border-color: #1e293b;
            --glass-bg: rgba(30, 41, 59, 0.4);
            --glass-border: rgba(255, 255, 255, 0.05);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Outfit', sans-serif;
            background-color: var(--bg-primary);
            color: var(--text-primary);
            min-height: 100vh;
            padding: 2rem;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            width: 100%;
            max-width: 1000px;
            margin-bottom: 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 1.5rem;
            border-bottom: 1px solid var(--border-color);
        }

        h1 {
            font-size: 2.2rem;
            font-weight: 600;
            background: linear-gradient(135deg, #60a5fa, #34d399);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .subtitle {
            font-size: 0.95rem;
            color: var(--text-secondary);
            margin-top: 0.25rem;
        }

        .server-status {
            background-color: rgba(16, 185, 129, 0.1);
            border: 1px solid rgba(16, 185, 129, 0.2);
            color: var(--accent-green);
            padding: 0.5rem 1rem;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .status-dot {
            width: 8px;
            height: 8px;
            background-color: var(--accent-green);
            border-radius: 50%;
            display: inline-block;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(16, 185, 129, 0.7); }
            70% { transform: scale(1); box-shadow: 0 0 0 6px rgba(16, 185, 129, 0); }
            100% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(16, 185, 129, 0); }
        }

        main {
            width: 100%;
            max-width: 1000px;
            display: grid;
            grid-template-columns: 1fr;
            gap: 1.5rem;
        }

        .grid-header {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr 1fr;
            padding: 1rem;
            font-weight: 600;
            color: var(--text-secondary);
            border-bottom: 1px solid var(--border-color);
            font-size: 0.9rem;
        }

        .unit-card {
            background: var(--glass-bg);
            border: 1px solid var(--glass-border);
            border-radius: 12px;
            padding: 1.5rem;
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr 1fr;
            align-items: center;
            transition: all 0.3s ease;
        }

        .unit-card:hover {
            transform: translateY(-2px);
            border-color: rgba(96, 165, 250, 0.3);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            background: rgba(30, 41, 59, 0.6);
        }

        .unit-title-block {
            display: flex;
            flex-direction: column;
            gap: 0.25rem;
        }

        .unit-id {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.8rem;
            color: var(--accent-blue);
            font-weight: 500;
        }

        .unit-name {
            font-size: 1.1rem;
            font-weight: 500;
        }

        .tait-badge {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 6px;
            font-size: 0.8rem;
            font-weight: 500;
            width: fit-content;
        }

        .tait-presentation {
            background-color: rgba(59, 130, 246, 0.1);
            color: #60a5fa;
            border: 1px solid rgba(59, 130, 246, 0.2);
        }

        .tait-practice {
            background-color: rgba(139, 92, 246, 0.1);
            color: #a78bfa;
            border: 1px solid rgba(139, 92, 246, 0.2);
        }

        .tait-assessment {
            background-color: rgba(16, 185, 129, 0.1);
            color: #34d399;
            border: 1px solid rgba(16, 185, 129, 0.2);
        }

        .file-status {
            font-size: 0.9rem;
            color: var(--text-secondary);
        }

        .time-modified {
            font-size: 0.8rem;
            color: #6b7280;
            margin-top: 0.25rem;
        }

        .actions {
            display: flex;
            gap: 0.75rem;
            justify-content: flex-end;
        }

        .btn {
            padding: 0.6rem 1.2rem;
            border-radius: 8px;
            font-size: 0.9rem;
            font-weight: 500;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            border: none;
        }

        .btn-primary {
            background-color: var(--accent-blue);
            color: white;
        }

        .btn-primary:hover {
            background-color: #2563eb;
            box-shadow: 0 0 15px rgba(59, 130, 246, 0.4);
        }

        .btn-secondary {
            background-color: transparent;
            border: 1px solid var(--border-color);
            color: var(--text-primary);
        }

        .btn-secondary:hover {
            background-color: rgba(255, 255, 255, 0.05);
            border-color: var(--text-secondary);
        }

        .btn-build {
            background-color: rgba(16, 185, 129, 0.1);
            border: 1px solid rgba(16, 185, 129, 0.2);
            color: var(--accent-green);
        }

        .btn-build:hover {
            background-color: var(--accent-green);
            color: var(--bg-primary);
            box-shadow: 0 0 15px rgba(16, 185, 129, 0.4);
        }

        footer {
            margin-top: auto;
            padding-top: 3rem;
            color: #4b5563;
            font-size: 0.85rem;
            display: flex;
            justify-content: space-between;
            width: 100%;
            max-width: 1000px;
        }

        footer a {
            color: #6b7280;
            text-decoration: none;
        }

        footer a:hover {
            color: var(--text-secondary);
        }
    </style>
</head>
<body>
    <header>
        <div>
            <h1>🏰 nixB OER Laboratory</h1>
            <div class="subtitle">Didactic course server for reproducible software environments</div>
        </div>
        <div class="server-status">
            <span class="status-dot"></span>
            Server Online
        </div>
    </header>

    <main>
        <div class="grid-header">
            <div>OER Unit</div>
            <div>Tait Class</div>
            <div>Build Status</div>
            <div style="text-align: right;">Orchestration</div>
        </div>

        {{range .}}
        <div class="unit-card">
            <div class="unit-title-block">
                <span class="unit-id">{{.ID}}</span>
                <span class="unit-name">{{.Title}}</span>
            </div>
            <div>
                <span class="tait-badge {{if eq .TaitClass "Presentation"}}tait-presentation{{else if eq .TaitClass "Practice"}}tait-practice{{else}}tait-assessment{{end}}">
                    {{.TaitClass}}
                </span>
            </div>
            <div class="file-status">
                {{if .Exists}}
                    <span style="color: var(--accent-green);">● Compiled</span>
                    <div class="time-modified">Mod: {{.LastModified}}</div>
                {{else}}
                    <span style="color: #ef4444;">○ Missing HTML</span>
                {{end}}
            </div>
            <div class="actions">
                <form action="/build" method="POST" style="display: inline;">
                    <input type="hidden" name="unit" value="{{.ID}}">
                    <button type="submit" class="btn btn-secondary btn-build">
                        ⚡ Build
                    </button>
                </form>
                {{if .Exists}}
                    <a href="/content/{{.HTMLPath}}" class="btn btn-primary" target="_blank">
                        👁️ Preview
                    </a>
                {{else}}
                    <button class="btn btn-secondary" style="opacity: 0.5; cursor: not-allowed;" disabled>
                        👁️ Preview
                    </button>
                {{end}}
            </div>
        </div>
        {{end}}
    </main>

    <footer>
        <div>UK Timezone (Europe/London)</div>
        <div>Primary Core: <a href="file:///Users/aamorim/DASHBOARD.md">Dashboard</a></div>
    </footer>
</body>
</html>
`

var units = []UnitInfo{
	{
		ID:        "nixB-U1",
		Title:     "Unit 1: The Reproducibility Gap",
		MDPath:    "content/unit1_content_v1.0.md",
		XMLPath:   "ou-xml/unit1_content_v1.0.xml",
		HTMLPath:  "unit1_content_v1.0_preview.html",
		TaitClass: "Presentation",
	},
	{
		ID:        "nixB-U2",
		Title:     "Unit 2: Declarative Foundations (Nix & uv)",
		MDPath:    "content/unit2_content_v1.0.md",
		XMLPath:   "ou-xml/unit2_content_v1.0.xml",
		HTMLPath:  "unit2_content_v1.0_preview.html",
		TaitClass: "Presentation",
	},
	{
		ID:        "nixB-U3",
		Title:     "Unit 3: Local Infrastructure (Bitcoin & Lightning)",
		MDPath:    "content/unit3_content_v1.0.md",
		XMLPath:   "ou-xml/unit3_content_v1.0.xml",
		HTMLPath:  "unit3_content_v1.0_preview.html",
		TaitClass: "Practice",
	},
	{
		ID:        "nixB-U4",
		Title:     "Unit 4: Verification & The Reflective Practitioner",
		MDPath:    "content/unit4_content_v1.0.md",
		XMLPath:   "ou-xml/unit4_content_v1.0.xml",
		HTMLPath:  "unit4_content_v1.0_preview.html",
		TaitClass: "Assessment",
	},
}

func updateUnitStatus() {
	for i, u := range units {
		htmlFile := filepath.Join("content", u.HTMLPath)
		info, err := os.Stat(htmlFile)
		if err == nil {
			units[i].Exists = true
			units[i].LastModified = info.ModTime().Format("15:04:05 (02 Jan)")
		} else {
			units[i].Exists = false
		}
	}
}

func main() {
	// Root handler
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/" {
			http.NotFound(w, r)
			return
		}
		updateUnitStatus()
		t := template.Must(template.New("dashboard").Parse(dashboardHTML))
		t.Execute(w, units)
	})

	// Build handler
	http.HandleFunc("/build", func(w http.ResponseWriter, r *http.Request) {
		if r.Method != http.MethodPost {
			http.Error(w, "Method not allowed", http.StatusMethodNotAllowed)
			return
		}
		unitID := r.FormValue("unit")
		var targetUnit *UnitInfo
		for _, u := range units {
			if u.ID == unitID {
				targetUnit = &u
				break
			}
		}

		if targetUnit == nil {
			http.Error(w, "Unit not found", http.StatusBadRequest)
			return
		}

		log.Printf("⚡ Rebuilding unit %s...\n", unitID)

		// 1. Convert Codelab MD to OU-XML using Go binary if the MD exists
		if _, err := os.Stat(targetUnit.MDPath); err == nil {
			log.Printf("  - Converting Markdown to XML...\n")
			cmd := exec.Command("bin/codelab2ouxml", targetUnit.MDPath, targetUnit.XMLPath)
			if output, err := cmd.CombinedOutput(); err != nil {
				log.Printf("  ❌ Go Converter Error: %v\nOutput: %s\n", err, string(output))
				http.Error(w, fmt.Sprintf("Go Converter Error: %v\n%s", err, string(output)), http.StatusInternalServerError)
				return
			}
		} else {
			log.Printf("  - MD file %s missing, using existing XML %s...\n", targetUnit.MDPath, targetUnit.XMLPath)
		}

		// 2. Render preview html using preview.sh (which is standard bash script in current directory)
		log.Printf("  - Rendering HTML preview via preview.sh...\n")
		cmd := exec.Command("./preview.sh", targetUnit.XMLPath)
		if output, err := cmd.CombinedOutput(); err != nil {
			log.Printf("  ❌ Preview.sh Error: %v\nOutput: %s\n", err, string(output))
			http.Error(w, fmt.Sprintf("Preview.sh Error: %v\n%s", err, string(output)), http.StatusInternalServerError)
			return
		}

		log.Printf("  ✅ Rebuild complete!\n")

		// Redirect back to dashboard
		http.Redirect(w, r, "/", http.StatusSeeOther)
	})

	// Static files handler serving content directory
	fs := http.FileServer(http.Dir("content"))
	http.Handle("/content/", http.StripPrefix("/content/", fs))

	port := "8080"
	if len(os.Args) > 1 {
		port = os.Args[1]
	}

	fmt.Printf("🏰 nixB OER Lab Server running at http://localhost:%s\n", port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
