import json
import os
from collections import defaultdict
from datetime import datetime

TIMELINE_FILE = "scrum_pixel/web_ui/public/playback_timeline.json"

def calculate_metrics():
    if not os.path.exists(TIMELINE_FILE):
        print(f"Error: {TIMELINE_FILE} not found. Have you run git_history_parser.py?")
        return

    with open(TIMELINE_FILE, 'r') as f:
        timeline = json.load(f)

    if not timeline:
        print("Timeline is empty.")
        return

    # Dictionary to track the lifecycle of each card
    # Format: { card_id: { 'points': int, 'transitions': { status: earliest_timestamp } } }
    cards = defaultdict(lambda: {'points': 0, 'transitions': {}})

    for frame in timeline:
        timestamp = frame['timestamp']
        for agent in frame.get('agents', []):
            card_id = agent['id']
            status = agent.get('status', 'Backlog')
            points = agent.get('points', 0)
            
            # Store complexity points
            cards[card_id]['points'] = points
            
            # Record the earliest time we see a card in a given status
            if status not in cards[card_id]['transitions']:
                cards[card_id]['transitions'][status] = timestamp

    print("=== Scrum Metrics Analysis ===")
    print(f"Total Cards Tracked: {len(cards)}\n")
    
    # Store durations for averages
    in_progress_durations_by_points = defaultdict(list)
    
    print(f"{'Card ID':<25} | {'Points':<8} | {'Status':<15} | {'Time In Progress (hours)':<25}")
    print("-" * 80)
    
    for card_id, data in cards.items():
        points = data['points']
        transitions = data['transitions']
        
        # Calculate time spent "In Progress"
        # Since git history only captures discrete commits, this is the time
        # between the FIRST time we saw it "In Progress" and the FIRST time we saw it "Done"
        
        duration_hours = "N/A"
        current_status = "In Progress" if "In Progress" in transitions and "Done" not in transitions else "Done" if "Done" in transitions else "To Do/Backlog"
        
        if "In Progress" in transitions and "Done" in transitions:
            duration_sec = transitions["Done"] - transitions["In Progress"]
            # Ensure positive duration (in case commits were out of order somehow)
            duration_sec = max(0, duration_sec) 
            duration_hours_val = duration_sec / 3600
            duration_hours = f"{duration_hours_val:.2f}"
            in_progress_durations_by_points[points].append(duration_hours_val)
            
        print(f"{card_id:<25} | {points:<8} | {current_status:<15} | {duration_hours:<25}")

    print("\n=== Average Completion Time by Complexity (Points) ===")
    if not in_progress_durations_by_points:
        print("Not enough completed cards with history to calculate averages.")
    else:
        for points in sorted(in_progress_durations_by_points.keys()):
            durations = in_progress_durations_by_points[points]
            avg_hours = sum(durations) / len(durations)
            print(f"Points: {points:<2} -> Average time to complete: {avg_hours:.2f} hours (Based on {len(durations)} cards)")

if __name__ == "__main__":
    calculate_metrics()
