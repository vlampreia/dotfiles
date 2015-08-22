#!/bin/bash

# ZSH setup

configure () {
  local DIR_ROOT=$1

  git submodule init
  git submodule update

  local FILES=".zsh*"

  for file in $DIR_ROOT/$FILES; do
    local PATH_CONF=`realpath $file`
    FILE_NAME=`basename "$file"`
    local PATH_TARGET=$HOME/$FILE_NAME

    link $PATH_CONF $PATH_TARGET
  done
}
