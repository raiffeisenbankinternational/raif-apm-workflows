#!/bin/bash

set -euo pipefail

echo "Read the initial commit ID from the file"
if [[ ! -f initial-public-commit.txt ]]; then
  exit 0
fi


initial_commit=$(cat initial-public-commit.txt)

echo "Recreate an empty file with a header"
echo -e '# Changelog\n\n## Changes\n' > CHANGES.md

echo "Collect all commit messages since the initial commit, excluding 'Change-Id' and commit ID lines"
git log --pretty=format:"- %s%n%b%n" $initial_commit..HEAD | grep -v -e "Change-Id" >> CHANGES.md
