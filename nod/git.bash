#!/usr/bin/env bash

export NOD_GIT=0;

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
