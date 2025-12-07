#!/bin/bash
echo "Updating all submodules to latest main/master branch..."

# Update each submodule to latest main/master
git submodule foreach 'git checkout main 2>/dev/null || git checkout master && git pull origin main 2>/dev/null || git pull origin master'

# Commit the changes
git add .
git commit -m "feat(monorepo): update submodules to latest main"
git push

echo "Submodules updated successfully!"