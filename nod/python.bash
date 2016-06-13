#!/usr/bin/env bash

function nod-pipUpdate() {
	pip install --upgrade pip &&
	pip install --upgrade setuptools &&
	pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install --upgrade --allow-all-external
}

function nod-pythonUpdate() {
	nod-pipUpdate &&
	brew linkapps python
}

alias nod-updatePip=nod-pipUpdate
alias nod-updatePython=nod-pythonUpdate
