#!/bin/bash
# 🧬 Auto Git Backup Script — by Fahad

if [ ! -d .git ]; then
    echo "❌ This is not a Git repository!"
    echo "Run this inside a project folder with 'git init'."
    exit 1
fi

msg="Auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
if [ "$1" != "" ]; then
    msg="$*"
fi

echo "📥 Pulling latest changes..."
git pull --rebase

echo "🧩 Adding files..."
git add -A

echo "🧠 Committing with message: $msg"
git commit -m "$msg"

echo "🚀 Pushing to GitHub..."
git push

if [ $? -eq 0 ]; then
    echo "✅ Backup successful — pushed to GitHub!"
else
    echo "⚠️ Push failed. Check your connection or repo permissions."
fi
