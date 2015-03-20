#!/usr/bin/env bash

function nod-brewUpdate() {
	export UPDATE_BREW_STATUS=1;
	if
		brew prune &&
		brew update &&
		brew upgrade &&
		brew cleanup &&
		brew cask cleanup
	then
		UPDATE_BREW_STATUS=0;
	fi
	return $UPDATE_BREW_STATUS;
}
