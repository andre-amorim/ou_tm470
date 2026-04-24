import os
import re
import pandas as pd
import matplotlib.pyplot as plt
from datetime import datetime, timedelta
from pathlib import Path

def parse_card(file_path):
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Extract points and status from YAML frontmatter
    points_match = re.search(r'points:\s*(\d+)', content)
    status_match = re.search(r'status:\s*(\w+)', content)
    
    points = int(points_match.group(1)) if points_match else 0
    status = status_match.group(1) if status_match else "Backlog"
    
    # We'll assume for simplicity that if status is "Done", it was finished today.
    # In a real scenario, we'd extract the "Closed" date from the Logs section.
    return points, status

def generate_burndown():
    sprint_dir = Path("scrum/sprints")
    cards = list(sprint_dir.glob("*.md"))
    
    # TMA02 Deadline: May 5th, 2026
    deadline_date = datetime(2026, 5, 5).date()
    start_date = datetime(2026, 4, 21).date() # Assuming Sprint 3 started April 21st
    total_days = (deadline_date - start_date).days
    
    total_points = 0
    done_points = 0
    
    for card in cards:
        p, s = parse_card(card)
        total_points += p
        if s == "Done":
            done_points += p
    
    remaining_points = total_points - done_points
    
    # Timeline from Start to Deadline
    dates = [start_date + timedelta(days=i) for i in range(total_days + 1)]
    
    # Ideal Burndown (Diagonal line)
    ideal_line = [total_points - (total_points/total_days)*i for i in range(len(dates))]
    
    # Actual Burndown (Tracking from start to today)
    today = datetime.now().date()
    days_passed = (today - start_date).days
    actual_line = [total_points] * days_passed + [remaining_points]
    
    # Trim actual_line to match the length of dates passed so far
    actual_line = actual_line[:days_passed + 1]
    
    # Plotting
    plt.figure(figsize=(12, 7))
    plt.plot(dates, ideal_line, 'r--', alpha=0.5, label="Ideal Burndown (TMA02 Path)")
    plt.step(dates[:len(actual_line)], actual_line, 'b-', where='post', linewidth=2, label="Actual Progress")
    
    plt.axvline(x=today, color='gray', linestyle=':', label="Today")
    plt.title(f"TM470 Sprint 3: Path to TMA02 (Due: May 5th)", fontsize=16)
    plt.xlabel("Date", fontsize=12)
    plt.ylabel("Remaining Story Points", fontsize=12)
    plt.legend()
    plt.grid(True, linestyle=':', alpha=0.6)
    plt.xticks(rotation=45)
    plt.tight_layout()
    
    # Save as image
    output_path = "sprint3_tma02_burndown.png"
    plt.savefig(output_path)
    print(f"Academic Burndown generated: {output_path}")
    print(f"Days remaining until TMA02: {(deadline_date - today).days}")

if __name__ == "__main__":
    # Create output directory if it doesn't exist
    if not os.path.exists("scrum/sprints"):
        print("Error: No sprint directory found.")
    else:
        generate_burndown()
