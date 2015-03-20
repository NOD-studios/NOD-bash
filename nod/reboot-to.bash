#!/usr/bin/env bash

function nod-rebootToRecovery() {
    sudo bless --device /dev/disk0s1 --setBoot --legacy --nextonly && sudo reboot
}

function nod-rebootToMacosx() {
    sudo bless --device /dev/disk0s2 --setBoot --legacy --nextonly && sudo reboot
}

function nod-rebootToWindows() {
    sudo bless --device /dev/disk0s3 --setBoot --legacy --nextonly && sudo reboot
}

export ISSET_REBOOT_TO=true;
