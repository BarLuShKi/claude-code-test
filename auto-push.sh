#!/bin/bash
WATCH_DIR="/Users/jean-sebastienroy/Library/CloudStorage/OneDrive-TravellingTV.com/Téléchargements/Claude Code Test"

fswatch -o --exclude=".git" "$WATCH_DIR" | while read; do
  cd "$WATCH_DIR"
  git add -A
  git commit -m "Auto-save: $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null && git push origin main 2>/dev/null
done
