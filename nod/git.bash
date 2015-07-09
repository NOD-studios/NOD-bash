#!/usr/bin/env bash

function nod-gitPush() {
  git add -A &&
  git commit -am "$1" &&
  git push
}

function nod-gitPullOverwrite() {
  git fetch origin master &&
  git reset --hard FETCH_HEAD &&
  git clean -df
}

function nod-gitFetchMaster() {
  git fetch --all
  git reset --hard origin/master
}

function nod-gitPullRepo() {
  echo "Pulling git"
  git pull
}

function nod-gitPullAllRepos() {
  find . -maxdepth 1 -type d -exec sh -c '(cd {} && git pull)' ';'
}

function nod-gitPushRepo() {
  DATE=$(date +%d-%m-%Y" "%H:%M:%S)
  DATE="Updated at $DATE"
  git add -A && git commit -am "$DATE" && git push
  echo "$DATE"
}
