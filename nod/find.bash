#!/usr/bin/env bash

export NOD_FIND=1

function nod-findName() {
	mdfind -name "$1"
}

function nod-findAttr() {
	mdfind -"$1" "$2"
}
