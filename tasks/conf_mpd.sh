#!/bin/bash

PATH_CONF=$HOME/dotfiles/files/mpd/mpd.conf
DIR_CONF=$HOME/.config

if [ ! -d $DIR_CONF/mpd ]; then mkdir $DIR_CONF/mpd; fi
DIR_CONF=$DIR_CONF/mpd
PATH_TARGET_CONF=$DIR_CONF/mpd.conf

if [ ! -d $DIR_CONF/playlists ]; then mkdir $DIR_CONF/playlists; fi

touch $DIR_CONF/{database,log,pid,state,sticker.sql}

if [ -f $PATH_TARGET_CONF ]; then
  if [ "$(realpath $PATH_TARGET_CONF)" != "$PATH_CONF" ]; then
    mv $PATH_TARGET_CONF $PATH_TARGET_CONF.bak
    echo "backed up $PATH_TARGET_CONF ts $PATH_TARGET_CONF.bak"
  else
    exit 0
  fi
fi

ln -s $PATH_CONF $PATH_TARGET_CONF
echo "Soft linked $PATH_CONF to $PATH_TARGET"
