#!/usr/bin/env bash

#TODO figure out how to quote this line for avoiding word splitting
export NOD_IMPORTED=0
export NOD_DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
export NOD_LIB_DIR="$NOD_DIR"/nod
export NOD_VENDOR_DIR="$NOD_DIR"/vendor

#TODO: Documentation

nod-defaultsSet() {
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

nod-defaultsUnset() {
  unset MAILCHECK;
}

nod-import() {
  fileName=$1
  fileName="${1%.*}"
  fileExtension="$2"
  if [ -z "$fileExtension" ]
  then
    fileExtension='bash'
  fi
  if nod-isImported "$fileName";
    then
      true
      #echo 'NOD-'"$fileName"' is already imported'
    else
      nod-importedConstant "$fileName"
      export "$importedConstantName"=0
      source "$NOD_LIB_DIR"'/'"$fileName"'.'"$fileExtension" ||
      echo 'NOD-'"$fileName"' could not loaded'
  fi
}

nod-importedConstant() {
  importedConstantName=$1
  importedConstantName="${importedConstantName%.*}"
  importedConstantName="${importedConstantName//-/_}"
  importedConstantName='NOD_'"$importedConstantName"'_IMPORTED'
  importedConstantName="${importedConstantName^^}"
}

nod-isImported() {
  nod-importedConstant "$1"
  importedConstantValue="${!importedConstantName}"
  if [ "$importedConstantValue" = 0 ];
    then
      return 0
  fi
  return 1
}

nod-importAll() {
  for NOD_LIB in $NOD_LIB_DIR/*.bash
  do
    if [ -e "${NOD_LIB}" ]; then
      NOD_LIB=${NOD_LIB//$NOD_LIB_DIR}
      NOD_LIB=${NOD_LIB//\/}
      nod-import "$NOD_LIB"
    fi
  done
}

nod-loaded() {
  echo 'NODbash is loaded.'
}

nod-failed() {
  echo 'NODbash could not loaded'.
}

nod-init() {
  nod-defaultsSet
  nod-defaultsUnset
}

nod-init || nod-failed
