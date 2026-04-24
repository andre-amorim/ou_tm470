import subprocess
import json
import yaml
import os
from datetime import datetime

SCRUM_PATH = "scrum"
OUTPUT_FILE = "scrum_pixel/web_ui/public/playback_timeline.json"

def get_git_commits(path):
    """Returns a list of commit dictionaries touching the given path, oldest first."""
    result = subprocess.run(["git", "log", "--format=%H %ct", "--", path], capture_output=True, text=True)
    if result.returncode != 0:
        return []
    
    commits = []
    for line in result.stdout.strip().split('\n'):
        if line:
            parts = line.split()
            commits.append({"hash": parts[0], "timestamp": int(parts[1])})
    
    return commits[::-1]

def get_file_content_at_commit(commit_hash, file_path):
    result = subprocess.run(["git", "show", f"{commit_hash}:{file_path}"], capture_output=True, text=True)
    if result.returncode == 0:
        return result.stdout
    return None

def get_scrum_files_at_commit(commit_hash):
    result = subprocess.run(["git", "ls-tree", "-r", "--name-only", commit_hash, SCRUM_PATH], capture_output=True, text=True)
    if result.returncode == 0:
        return [f for f in result.stdout.strip().split('\n') if f.endswith('.md')]
    return []

def extract_state_from_content(content, filename):
    if content and content.startswith("---"):
        try:
            _, frontmatter, _ = content.split("---", 2)
            data = yaml.safe_load(frontmatter)
            if "role" in data and "status" in data:
                return {
                    "id": os.path.basename(filename).replace(".md", ""),
                    "summary": data.get("summary", ""),
                    "role": data["role"],
                    "status": data["status"],
                    "priority": data.get("priority", "Medium")
                }
        except Exception as e:
            pass
    return None

def build_timeline():
    commits = get_git_commits(SCRUM_PATH)
    timeline = []
    
    print(f"Found {len(commits)} commits affecting {SCRUM_PATH}")
    
    for commit in commits:
        state = {
            "timestamp": commit["timestamp"],
            "datetime": datetime.fromtimestamp(commit["timestamp"]).isoformat(),
            "agents": []
        }
        files = get_scrum_files_at_commit(commit["hash"])
        for file in files:
            content = get_file_content_at_commit(commit["hash"], file)
            agent = extract_state_from_content(content, file)
            if agent:
                state["agents"].append(agent)
                
        # Only add valid states that have agents
        if len(state["agents"]) > 0:
            timeline.append(state)

    if not os.path.exists(os.path.dirname(OUTPUT_FILE)):
        os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)

    with open(OUTPUT_FILE, 'w') as f:
        json.dump(timeline, f, indent=2)
    print(f"Generated timeline with {len(timeline)} events: {OUTPUT_FILE}")

if __name__ == "__main__":
    build_timeline()
