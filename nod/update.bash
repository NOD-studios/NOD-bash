#!/usr/bin/env bash

export NOD_UPDATE_IMPORTED=0

nod-import 'osx'
nod-import 'brew'
nod-import 'node'
nod-import 'ruby'
nod-import 'python'
nod-import 'php'
nod-import 'repos'

function nod-updateAll() {
	nod-osxUpdate
	nod-brewUpdate
	nod-nodeUpdate
	nod-rubyUpdate
	nod-pythonUpdate
	nod-phpUpdate
	nod-reposUpdate

	echo 'Update finished'
}
