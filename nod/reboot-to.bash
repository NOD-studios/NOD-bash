#!/usr/bin/env bash

export NOD_REBOOT_TO_IMPORTED=0;

function nod-rebootToRecovery() {
    sudo bless --device /dev/disk0s1 --setBoot --legacy --nextonly && sudo reboot
}

function nod-rebootToMacosx() {
    sudo bless --device /dev/disk0s2 --setBoot --legacy --nextonly && sudo reboot
}

function nod-rebootToWindows() {
    sudo bless --device /dev/disk0s3 --setBoot --legacy --nextonly && sudo reboot
}
