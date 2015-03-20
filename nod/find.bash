#!/usr/bin/env bash

function nod-findName() {
	mdfind -name "$1"
}

function nod-findAttr() {
	mdfind -"$1" "$2"
}
