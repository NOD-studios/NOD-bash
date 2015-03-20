#!/usr/bin/env bash

export NOD_UPDATE=0

function nod-update() {
	nod-osxUpdate;
	nod-brewUpdate;
	nod-nodeUpdate;
	nod-rubyUpdate;
	nod-pythonUpdate;
	nod-phpUpdate;
	nod-reposUpdate;

	echo "Update finished"
}

export ISSET_UPDATE=true;
