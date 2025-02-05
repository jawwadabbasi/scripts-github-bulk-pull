# Git Bulk Pull Script

## Overview
This script automates the process of running `git pull` in all Git repositories within a specified directory. If you have multiple repositories and want to update them all at once, this script saves time and effort.

## Features
- Iterates through all subdirectories.
- Checks if each subdirectory is a Git repository.
- Runs `git pull` to fetch the latest changes.
- Skips non-Git directories automatically.

## Usage

### 1. Give permissions
```bash
chmod +x bulk-git-pull.sh
```

### 2. Run the Script
```bash
./bulk-git-pull.sh
```

By default, the script will iterate through the current directory (`.`) and pull changes for all Git repositories inside.

## Example Output
```
Pulling changes in batcave-tools/
Already up to date.

Pulling changes in bat-signal-automation/
Updating abc1234..xyz5678

joker-lair/ is not a Git repository.
```

## Notes
- Ensure you have the necessary permissions to access each repository.
- Make sure SSH keys or credentials are correctly configured for private repositories.

## License
This script is open-source and available for modification.

---

🚀 **Once Written, Forever Automated.**

**Author**: [Jawwad Abbasi](https://github.com/jawwadabbasi)