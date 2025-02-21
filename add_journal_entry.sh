#!/bin/bash

# Get today's date
today=$(date +%Y-%m-%d)
journal_dir="journal"
entry_file="$journal_dir/$today.md"

# Ensure the journal directory exists
mkdir -p $journal_dir

# Check if the entry already exists
if [ -f "$entry_file" ]; then
    echo "Journal entry for $today already exists!"
else
    # Create a new journal entry with a template
    cat <<EOT > "$entry_file"
# Study Journal - $today

## Research Progress
- 

## Key Takeaways
- 

## Next Steps
- 

## Notes
- 
EOT

    echo "New journal entry created: $entry_file"
fi

# Add, commit, and push changes
git add "$entry_file"
git commit -m "Added journal entry for $today"
git push origin main

echo "Journal entry committed and pushed to Git."

