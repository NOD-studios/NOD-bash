#!/usr/bin/env bash

export NOD_PYTHON=0

function nod-pipUpdate() {
	pip install --upgrade pip &&
	pip install --upgrade setuptools &&
	pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install --upgrade --allow-all-external
}

function nod-pythonUpdate() {
	nod-pipUpdate &&
	brew linkapps python
}
