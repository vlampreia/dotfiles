#!/bin/bash

# MPD setup

configure () {
  local DIR_ROOT=$1

  create_dir $HOME/.config/mpd

  local PATH_CONF=$DIR_ROOT/mpd.conf
  local DIR_CONF=$HOME/.config/mpd
  local PATH_TARGET=$DIR_CONF/mpd.conf

  create_dir $DIR_CONF/playlists

  touch $DIR_CONF/{database,log,pid,state,sticker.sql}

  link $PATH_CONF $PATH_TARGET

  create_dir $HOME/.ncmpcpp
  link $DIR_ROOT/.ncmpcpp/config $HOME/.ncmpcpp/config
  link $DIR_ROOT/.ncmpcpp/bindings $HOME/.ncmpcpp/bindings
}
