![NODstrap](/.logo.bash.png?raw=true "NODstrap")

A bash helper library that includes some functions used by [NOD studios](http://nod.st) people

# Usage

## Installation

Clone it...
```bash
cd ~/;
git clone git@github.com:NOD-studios/NOD-bash.git .nod_bash
```
and source it in your bash profile and import all
```bash
source ~/.nod_bash/nod.bash
nod-importAll
```
or import some
```bash
source ~/.nod_bash/nod.bash
nod-import 'osx'
nod-import 'php'
nod-import 'volume'
nod-import 'update'
```

## Commands

```
nod-bashItUpdate            nod-gitPullAllRepos         nod-isImported              nod-playTorrent3            nod-processPorts            nod-routineUpdate           nod-updatePhp
nod-brewUpdate              nod-gitPullOverwrite        nod-isSet                   nod-playTorrentAir          nod-processShow             nod-rubyUpdate              nod-updatePip
nod-defaultsSet             nod-gitPullRepo             nod-loaded                  nod-playTorrentAirSubtitle  nod-processShowCpu          nod-rubyUpdateGem           nod-updatePython
nod-defaultsUnset           nod-gitPush                 nod-nodeUpdate              nod-playTorrentSubtitle     nod-processShowMemory       nod-torrentPlay             nod-updateRepos
nod-environmentAdd          nod-gitPushRepo             nod-osxUpdate               nod-playVlc                 nod-pythonUpdate            nod-torrentSearch           nod-updateRuby
nod-environmentAddStart     nod-import                  nod-phpUpdate               nod-processKill             nod-rebootToMacosx          nod-torrentSearchPb         nod-volume
nod-environmentSetup        nod-importAll               nod-pipUpdate               nod-processKillName         nod-rebootToRecovery        nod-torrentSearchTz         nod-volume0
nod-failed                  nod-importedConstant        nod-playDownloadSubtitle    nod-processKillPid          nod-rebootToWindows         nod-updateAll               nod-volume10
nod-findAttr                nod-init                    nod-playMpv                 nod-processKillUi           nod-reposUpdate             nod-updateBrew              nod-volume5
nod-findName                nod-isBinary                nod-playTorrent             nod-processList             nod-routineAll              nod-updateNode              nod-volumeMute
nod-gitFetchMaster          nod-isFile                  nod-playTorrent2            nod-processName             nod-routineNotify           nod-updateOsx
```

# TODOs
- Convert it to a self installable npm package
- Documentation
- Use pgrep instead grep *@ [process.bash](/nod/process.bash "process.bash")*

# Contact:
[hey@nod.st](mailto:hey@nod.st)
