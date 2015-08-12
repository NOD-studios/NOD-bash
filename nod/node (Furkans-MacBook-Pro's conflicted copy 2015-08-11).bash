#!/usr/bin/env bash

export PATH="/usr/local/share/npm/bin:$PATH"
alias npm-exec='PATH=$(npm bin):$PATH'

function nod-nodeUpdate() {
	npm cache clean &&
	npm install -g npm@latest &&
	npm update -g
}
