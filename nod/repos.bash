#!/usr/bin/env bash

export NOD_REPOS_IMPORTED=0

function nod-popcornTimeUpdate() {
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

function nod-reposUpdateLocal() {
	nod-import "git"
	nod-gitPull
	echo "Updating npm"
	npm update && npm rebuild
	echo "Updating bower"
	"$(npm bin)/bower" update --allow-root
	echo "Updating composer"
	composer selfupdate && composer update
	echo "Updating require.js config with bower main paths"
	"$(npm bin)/bower-requirejs" -c js/main.js
	echo "Compressing require.js"
	"$(npm bin)/uglifyjs" vendor/requirejs/require.js --output="vendor/requirejs/require.min.js"
	echo "Building with require.js"
	"$(npm bin)/r.js" -o js/build.js
	nod-gitPush;
}
