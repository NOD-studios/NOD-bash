#!/usr/bin/env bash

export NOD_VOLUME=0

function nod-volume() {
  osascript -e "set Volume \"$1\""
}

function nod-volume0() {
  volume 0;
}

function nod-volume5() {
  volume 5;
}

function nod-volume10() {
  volume 10;
}

alias nod-volumeMute=nod-volume0;
