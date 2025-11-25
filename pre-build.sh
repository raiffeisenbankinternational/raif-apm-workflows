#!/bin/bash

set -exo pipefail

./changes.sh

echo "Check if CHANGES.md has changed."
if [[ -n $(git diff --name-only CHANGES.md) ]]; then
    echo "CHANGES.md has not been updated. Please run ./changes.sh commit CHANGES.md with new changes"
    exit 1
fi
