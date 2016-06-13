#!/usr/bin/env bash

export NOD_REPOS_IMPORTED=0

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
	if	nod-bashItUpdate;
	then
		REPOS_ALL_RETURN=0;
	fi
	return $REPOS_ALL_RETURN;
}

alias nod-updateRepos=nod-reposUpdate
