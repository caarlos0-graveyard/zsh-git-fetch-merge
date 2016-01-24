#!/bin/sh
git-fetch-merge() {
  local remote branch
  remote=$(git remote | grep upstream || echo "origin")
  branch="$1"
  test -z "$branch" && branch="master"
  git fetch "$remote" && git merge "$remote/$branch"
}
