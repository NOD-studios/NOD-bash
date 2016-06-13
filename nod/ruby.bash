#!/usr/bin/env bash

function nod-rubyUpdateGem() {
	gem update --system
	gem update
}

function nod-rubyUpdate() {
	brew upgrade ruby
	nod-rubyUpdateGem
}

alias nod-updateRuby=nod-rubyUpdate