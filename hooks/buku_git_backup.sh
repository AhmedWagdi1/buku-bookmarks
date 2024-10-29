#!/bin/bash

# Run the Buku command with all passed arguments
buku "$@"

# Navigate to the Buku database directory
cd ~/.local/share/buku

# Check if there are any changes
if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "Auto-commit from Buku command: $(date)"
    # Optional: Uncomment the line below if you have a remote repository
    # git push origin main
fi

