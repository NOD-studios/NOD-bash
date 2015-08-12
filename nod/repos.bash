#!/usr/bin/env bash

export NOD_REPOS_IMPORTED=0

function nod-popcornTimeUpdate() {
	returnVal=1
	if	cd "$REPOS"/PopcornApp &&
			git pull &&
			npm install &&
			npm update -g grunt-cli bower &&
			npm update &&
			"$(npm bin)"/bower update &&
			grunt build --platform=macosx &&
			grunt start
	then
		returnVal=0
	fi
	return $returnVal;
}

function nod-bashItUpdate() {
	export REPOS_BASH_IT_RETURN=1;
	if	cd "$BASH_IT" &&
	 		git pull &&
	 		reload;
	then
		REPOS_BASH_IT_RETURN=0;
	fi
	return $REPOS_BASH_IT_RETURN;
}

function nod-reposUpdate() {
	export REPOS_ALL_RETURN=1;
	if	nod-popcornTimeUpdate &&
			nod-bashItUpdate;
	then
		REPOS_ALL_RETURN=0;
	fi
	return $REPOS_ALL_RETURN;
}
