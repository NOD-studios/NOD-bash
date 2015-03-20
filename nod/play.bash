#!/usr/bin/env bash

export NOD_PLAY=0;

function nod-playTorrent() {
	peerflix "$1" --remove --connections=500 --vlc --port=8989 --not-on-top --peer-port=9191
}

function nod-playTorrentAir() {
	peerflix "$1" --remove --connections=500 --airplay
}

function nod-playTorrentAirSubtitle() {
	peerflix "$1" --remove --connections=500 --airplay --subtitles "$2"
}

function nod-playTorrentSubtitle() {
	peerflix "$1" --remove --connections=500 --vlc --port=8989 --not-on-top --peer-port=9191 --subtitles "$2"
}

function nod-playTorrent2() {
	peerflix "$1" --remove --connections=500 --vlc --port=9090 --not-on-top --peer-port=9292
}

function nod-playTorrent3() {
	peerflix "$1" --remove --connections=500 --vlc --port=9191 --not-on-top --peer-port=9393
}

function nod-playVlc() {
	"$HOME"/Applications/VLC.app/Contents/MacOS/VLC --fullscreen "$1"
}

function nod-playMpv() {
	$1 = "$1" || "movie"
	mpv "$1" --scrobble="$2"
}

function nod-playDownloadSubtitle() {
	export language=en
	if exists "$2"; then
		language=$2
	fi;
	subliminal -l="$2" "$1"
}
