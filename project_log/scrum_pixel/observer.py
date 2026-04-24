import time
import json
import yaml
import os
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

SCRUM_PATH = "scrum"
STATE_FILE = "scrum_pixel/web_ui/public/current_state.json"

class ScrumHandler(FileSystemEventHandler):
    def on_modified(self, event):
        if event.is_directory:
            return
        if event.src_path.endswith(".md"):
            print(f"File {event.src_path} changed, updating state...")
            update_state()

def update_state():
    state = {"agents": []}
    
    # Walk through backlog and sprints
    for root, _, files in os.walk(SCRUM_PATH):
        for file in files:
            if file.endswith(".md"):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r') as f:
                        content = f.read()
                        if content.startswith("---"):
                            _, frontmatter, _ = content.split("---", 2)
                            data = yaml.safe_load(frontmatter)
                            
                            if "role" in data and "status" in data:
                                state["agents"].append({
                                    "id": file.replace(".md", ""),
                                    "summary": data.get("summary", ""),
                                    "role": data["role"],
                                    "status": data["status"],
                                    "priority": data.get("priority", "Medium")
                                })
                except Exception as e:
                    print(f"Error parsing {file_path}: {e}")

    with open(STATE_FILE, 'w') as f:
        json.dump(state, f, indent=2)
    print(f"State updated: {STATE_FILE}")

if __name__ == "__main__":
    if not os.path.exists("scrum_pixel"):
        os.makedirs("scrum_pixel")
        
    update_state()
    event_handler = ScrumHandler()
    observer = Observer()
    observer.schedule(event_handler, SCRUM_PATH, recursive=True)
    observer.start()
    print(f"Watching {SCRUM_PATH} for changes...")
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
