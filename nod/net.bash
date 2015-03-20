#!/usr/bin/env bash

function netCon() {
    ssh "$1"
}

function netDnsClear() {
    sudo discoveryutil udnsflushcaches
}
