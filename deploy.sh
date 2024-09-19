#!/bin/bash

# Exit script on error
set -e

# Step 1: Poetry version patch (increments the patch version number)
echo "Patching the version..."
poetry version patch

# Step 2: Build the project using Poetry
echo "Building the project..."
poetry build

# Step 3: Publish the package to PyPI (or a configured repository)
echo "Publishing the package..."
poetry publish 

# Step 4: Git add all changes
echo "Adding changes to Git..."
git add -A

# Step 5: Git commit with a message
echo "Committing changes..."
git commit -m "new update"

git push origin master
# Done
echo "Deployment completed!"
