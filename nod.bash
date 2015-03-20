#!/usr/bin/env bash

export NOD_DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
export NOD_LIB_DIR="$NOD_DIR"/nod

#TODO: Documentation

nod-setDefaults() {
  export LC_ALL=en_US.UTF-8
  export LANG=en_US.UTF-8
  export PATH="/usr/local/share/npm/bin:$PATH"
  export PATH="/usr/local/sbin":$PATH
  export PATH=$HOME/.cabal/bin:$PATH
  export PATH="$HOME/Library/Haskell/bin:$PATH"
  export REPOS="$HOME/Library/Repos/"
  export PYTHONPATH="python -c 'import sys;print \":\".join(sys.path)'"
  export ANDROID_HOME=/usr/local/opt/android-sdk
}

nod-unsetDefaults() {
  unset MAILCHECK;
}


nod-import() {
  if [ ! -z "$2" ]
  then
      : # $1 was given
  else
      : .bash
  fi
  source "$1""$2" || echo "$1 could not loaded"
}

nod-importAll() {
  for NOD_LIB in $NOD_LIB_DIR/*.bash
  do
    true
    if [ -e "${NOD_LIB}" ]; then
      nod-import "$NOD_LIB"
    fi
  done
}

nod-init() {
  nod-setDefaults
  nod-unsetDefaults
  if [ ! "$nodImportAll" = false ]; then
    nod-importAll
  fi
  nod-loaded
}

nod-init || nod-failed;
