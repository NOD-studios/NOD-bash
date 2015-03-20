#!/usr/bin/env bash

export NOD_NODE=0;

alias npm-exec='PATH=$(npm bin):$PATH'

function nod-nodeUpdate() {
	npm cache clean &&
	npm install -g npm@latest &&
	npm update -g
}
