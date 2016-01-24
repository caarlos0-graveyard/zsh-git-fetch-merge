#!/bin/zsh
git-fetch-merge() {
  local remote=$(git remote | grep upstream || echo "origin")
  local branch="$1"
  test -z "$branch" && branch="master"
  git fetch "$remote" && git merge "$remote/$branch"
}
