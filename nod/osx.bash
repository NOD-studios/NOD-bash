#!/usr/bin/env bash

function nod-osxUpdate() {
	sudo -v &&
	softwareupdate --list &&
	softwareupdate --install --all
}

alias nod-updateOsx=nod-osxUpdate