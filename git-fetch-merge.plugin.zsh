#!/bin/sh
# shellcheck disable=SC2039
git-fetch-merge() {
  # shellcheck disable=SC2039
  local remote branch
  remote=$(git remote | grep upstream || echo "origin")
  branch="$1"
  test -z "$branch" && branch="master"
  echo "-> Fetching and merging $remote/$branch..."
  git fetch "$remote" && git merge "$remote/$branch"
}
