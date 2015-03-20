#!/usr/bin/env bash

export NOD_HELPERS=0;

function nod-isSet() {
  [ -z "$$1" -a "${"$1"+defined}" == "defined" ]
}

function nod-isBinary() {
  export BIN_PATH=$(which "$1")
  [ -x "$BIN_PATH" ]
}

function nod-isFile() {
  [[ ! -f "$1" ]]
}
