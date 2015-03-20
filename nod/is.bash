#!/usr/bin/env bash

function nod-isSet() {
  [ -z "${1+x}" ]
}

function nod-isBinary() {
  export BIN_PATH=$(which "$1")
  [ -x "$BIN_PATH" ]
}

function nod-isFile() {
  [[ ! -f "$1" ]]
}
