#!/bin/bash

# Check that the user has provided a username or organization name
if [ -z "$1" ]; then
  echo "Usage: $0 <username_or_organization>"
  exit 1
fi

# GitHub username or organization
USER_OR_ORG=$1

# Retrieve the list of public repositories
REPOS=$(curl -s "https://api.github.com/users/$USER_OR_ORG/repos?per_page=100" | jq -r '.[].clone_url')

# Check if any repositories were found
if [ -z "$REPOS" ]; then
  echo "No repositories found for user or organization: $USER_OR_ORG"
  exit 1
fi

# Create a directory for the user or organization
mkdir -p "$USER_OR_ORG"
cd "$USER_OR_ORG" || exit

# Clone each repository
for REPO in $REPOS; do
  git clone "$REPO"
done
