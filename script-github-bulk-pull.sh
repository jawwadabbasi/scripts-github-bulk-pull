#!/bin/bash

# ----------------------------------------- #
#      https://github.com/jawwadabbasi      #
#     Once Written, Forever Automated       #
# ----------------------------------------- #

# Directory containing the repositories
REPOS_DIR="."

# Change to the directory containing the repositories
cd "$REPOS_DIR" || { echo "Directory $REPOS_DIR does not exist."; exit 1; }

# Loop through each subdirectory
for dir in */; do

  if [ -d "$dir" ]; then
    # Change to the subdirectory
    cd "$dir" || continue
    
    # Check if it's a Git repository
    if [ -d ".git" ]; then
      echo "Pulling changes in $dir"
      git pull
    else
      echo "$dir is not a Git repository."
    fi

    # Change back to the parent directory
    cd ..
  fi
done