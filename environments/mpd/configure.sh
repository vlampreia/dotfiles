#!/bin/bash

configure () {
  local DIR_ROOT=$1

  create_dir $HOME/.config/mpd

  local PATH_CONF=$DIR_ROOT/mpd.conf
  local DIR_CONF=$HOME/.config/mpd
  local PATH_TARGET=$DIR_CONF/mpd.conf

  create_dir $DIR_CONF/playlists

  touch $DIR_CONF/{database,log,pid,state,sticker.sql}

  link $PATH_CONF $PATH_TARGET
}
