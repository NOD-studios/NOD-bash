#!/bin/bash

function nod-environmentAdd() {
  brew cask install "$1"
}

function nod-environmentAddStart() {
  export APP_DIR="$HOME/Applications"
  if isset "$3"; then
    APP_DIR=$3
  fi
  brew cask install "$1" && open "$APP_DIR/$2".app;
}

#TO DO: group setup
function nod-environmentSetup() {
  sudo echo "setup environment started";


  brew update && brew upgrade;
  brew install ruby --universal;
  #\curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew --rails;
  brew install openssl --universal;
  brew install curl --with-openssl;
  brew install git --with-brewed-curl --with-brewed-openssl;

  brew install brew-cask && brew tap caskroom/versions &&
  nod-environmentAdd dropbox Dropbox;
  brew cask install xquartz;

  brew install httpd24 --with-homebrew-openssl --with-privileged-ports &&
  brew install mysql --universal &&
  brew install sqlite icu4c &&
  brew install php56 --homebrew-apxs --with-homebrew-curl --with-homebrew-libxslt --with-homebrew-openssl --with-imap --with-mssql --with-phpdbg --with-postgresql --with-tidy &&
  brew install composer phpmyadmin phpmd php-cs-fixer php56-xdebug php56-oauth php56-gearman;
  sudo apachectl restart;
  brew install python --universal && brew install python3 --universal && pip install --upgrade setuptools && pip install --upgrade pip && pip install --upgrade mackup && brew linkapps python;
  brew install npm --with-icu4c --with-openssl && npm update -g npm@latest && npm update -g;
  brew install ghc cabal-install && cabal update && cabal install shellcheck;
  brew install wget brew-rmtree brew-desc terminal-notifierb gitignorer bash numpy &&

  nod-environmentAddStart totalfinder TotalFinder;
  nod-environmentAdd bittorrent-sync "BitTorrent Sync";
  if [ ! -d /Applications/"Adobe Creative Cloud".app ],
    then
      nod-environmentAddStart adobe-creative-cloud ../opt/homebrew-cask/Caskroom/adobe-creative-cloud/latest/"Creative Cloud Installer";
  fi;
  nod-environmentAdd pixelapse Pixelapse;
  nod-environmentAdd google-chrome "Google Chrome";
  nod-environmentAdd mailbox "Mailbox (Beta)";
  nod-environmentAdd monotype-skyfonts "Monotype SkyFonts";
  nod-environmentAdd boom "Boom 2";
  nod-environmentAddStart utorrent ../opt/homebrew-cask/Caskroom/utorrent/latest/uTorrent-Installer;
  nod-environmentAdd hippoconnect "HippoConnect";
  nod-environmentAdd airfoil "Airfoil";
  nod-environmentAdd bootchamp "BootChamp";

  brew cask install java adobe-air linein chrome-remote-desktop-host gitter google-hangouts picasa remote-desktop-connection filezilla beatport-pro soundflower soulseek mixlr the-unarchiver skype sourcetree videospec firefox slicy dash shortcat iexplorer gog-downloader beardedspice keka cakebrew beamer daisydisk gfxcardstatus grooveshark torbrowser colloquy minecraft selfcontrol soundcleod genymotion goofy mou namebench silverlight vlc virtualbox tunnelbear airparrot;

  mackup restore &&

  nod-environmentAdd atom Atom && apm stars --install;
  nod-environmentAdd fontexplorer-x-pro "FontExplorer X Pro";
  nod-environmentAdd github GitHub;
  nod-environmentAdd expandrive ExpanDrive;
  nod-environmentAdd monotype-skyfonts "Monotype SkyFonts";
  nod-environmentAdd bettertouchtool BetterTouchTool;
  nod-environmentAdd divvy Divvy;
  nod-environmentAdd bartender Bartender;
  nod-environmentAdd lastfm "Last.fm";
  nod-environmentAdd teamviewer "TeamViewer";
  nod-environmentAddStart default-folder-x ../opt/homebrew-cask/Caskroom/default-folder-x/4.6.13/"Default Folder X Installer";

  brew install fish;
  nod-environmentAddStart totalterminal TotalTerminal;
}
