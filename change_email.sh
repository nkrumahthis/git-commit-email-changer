#!/bin/bash

# Check if two arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <old_email> <new_email>"
  exit 1
fi

old_email="$1"
new_email="$2"

# Set the local git config user email to the new email
git config user.email "$new_email"

# Change all the commits from the old email to the new email
git filter-branch --env-filter "
if [ \"\$GIT_COMMITTER_EMAIL\" = \"$old_email\" ]; then
    export GIT_COMMITTER_EMAIL=\"$new_email\"
fi
if [ \"\$GIT_AUTHOR_EMAIL\" = \"$old_email\" ]; then
    export GIT_AUTHOR_EMAIL=\"$new_email\"
fi
" --tag-name-filter cat -- --branches --tags
