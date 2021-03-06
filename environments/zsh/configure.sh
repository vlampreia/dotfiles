#!/bin/bash

# ZSH setup

configure () {
  local DIR_ROOT=$1

  local CURRENTDIR=$(pwd)
  cd $DIR_ROOT
  git submodule init
  git submodule update
  cd $CURRENTDIR

  local FILES=".zsh*"

  local file
  for file in $DIR_ROOT/$FILES; do
    local PATH_CONF=`realpath $file`
    local PATH_TARGET=$HOME/`basename "$file"`

    link $PATH_CONF $PATH_TARGET
  done
}
