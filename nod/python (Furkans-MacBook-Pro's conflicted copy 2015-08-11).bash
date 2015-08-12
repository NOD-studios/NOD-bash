#!/usr/bin/env bash

export PATH="/usr/local/share/python:$PATH"
export PYTHONPATH="python -c 'import sys;print \":\".join(sys.path)'"

function nod-pipUpdate() {
	pip install --upgrade pip &&
	pip install --upgrade setuptools &&
	pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install --upgrade --allow-all-external
}

function nod-pythonUpdate() {
	nod-updatePip &&
	brew linkapps python
}
