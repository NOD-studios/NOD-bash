#!/usr/bin/env bash

export NOD_OSX=0;

function nod-osxUpdate() {
	sudo -v &&
	softwareupdate --list &&
	softwareupdate --install --all
}
