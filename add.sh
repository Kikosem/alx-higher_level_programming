#!/bin/bash

# Loop through all files in the current directory
for filename in *; do
  # Check if the file is not in the .git directory (avoiding Git internals)
  git add "$filename"
  git commit "Added $filename"
  git push --set-upstream origin main 

done
