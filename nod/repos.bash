#!/usr/bin/env bash

function nod-reposPopcornTime() {
	export REPOS_POPCORN_RETURN=1;
	if	cd /usr/local/Library/PopcornApp &&
			git pull &&
			npm update -g grunt-cli bower &&
			npm install &&
			"$(npm bin)"/grunt build --platform=macosx &&
			"$(npm bin)"/grunt start;
	then
		export REPOS_POPCORN_RETURN=0;
	fi
	return $REPOS_POPCORN_RETURN;
}


function nod-reposBashIt() {
	export REPOS_BASH_IT_RETURN=1;
	if	cd "$BASH_IT" &&
	 		git pull &&
	 		reload;
	then
		REPOS_BASH_IT_RETURN=0;
	fi
	return $REPOS_BASH_IT_RETURN;
}

function nod-reposAll() {
	export REPOS_ALL_RETURN=1;
	if	nod-reposPopcornTime &&
			nod-reposBashIt;
	then
		REPOS_ALL_RETURN=0;
	fi
	return $REPOS_ALL_RETURN;
}

export ISSET_REPOS=true;
