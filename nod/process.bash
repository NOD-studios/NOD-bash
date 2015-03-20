#!/usr/bin/env bash

export NOD_PROCESS=0

function nod-processShow() {
  top -o "$1" || 'cpu';
}

function nod-processShowCpu() {
  nod-processList 'cpu';
}

function nod-processShowMemory() {
  nod-processList 'rsize';
}

function nod-processList() {
  ps aux;
}

function nod-processKill() {
  process-list 'rsize';
}

function nod-processName() {
  #TODO: Use pgrep instead grep
  #Usage: pgrep -f "$service" > /dev/null
  ps aux | grep "$1"
}

function nod-processKillPid() {
  kill -9 "$1";
}

function nod-processKillName() {
  killall -KILL "$1";
}

function nod-processKillUi() {
  killall -KILL Finder;
  killall -KILL Dock;
  killall -KILL SystemUIServer;
}
