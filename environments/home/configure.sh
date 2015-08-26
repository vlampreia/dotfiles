#!/bin/bash
shopt -s extglob

# ~ setup

configure () {
  local DIR_ROOT=$1

  local CURRENTDIR=$(pwd)
  cd $DIR_ROOT
  git submodule init
  git submodule update
  cd $CURRENTDIR

  create_dir $HOME/.urxvt
  create_dir $HOME/.urxvt/ext
  link `realpath $DIR_ROOT/urxvt-font-size/font-size` $HOME/.urxvt/ext/font-size

  git config --global core.editor vim

  local file
  for file in $DIR_ROOT/.!(.|); do
    local PATH_CONF=`realpath $file`
    local PATH_TARGET=$HOME/`basename "$file"`

    link $PATH_CONF $PATH_TARGET
  done
}
