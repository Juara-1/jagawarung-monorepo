#!/bin/bash
echo "Updating all submodules to latest main branch..."

# Update each submodule to latest main
git submodule foreach 'git checkout main && git pull origin main'

# Commit the changes
git add .
git commit -m "feat(monorepo): update submodules to latest main"
git push

echo "Submodules updated successfully!"