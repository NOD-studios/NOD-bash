#!/usr/bin/env bash

function nod-torrentSearchPb() {
  "$REPOS"/peerflix_script/thepiratebay_se/tpb.sh "$@" ;
}
function nod-torrentSearchTz() {
  "$REPOS"/peerflix_script/torrentz_eu/torrentz_eu.sh "$@" ;
}

function nod-torrentSearch() {
  nod-torrentSearchTz "$@";
  nod-torrentSearchPb "$@";
}

function nod-torrentPlay() {
  nod-import play;
  nod-playTorrent "$@";
}

export ISSET_TORRENT=true;
