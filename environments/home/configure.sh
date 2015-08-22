#!/bin/bash
shopt -s extglob

# ~ setup

configure () {
  local DIR_ROOT=$1

  git config --global core.editor vim

  local file
  for file in $DIR_ROOT/.!(.|); do
    local PATH_CONF=`realpath $file`
    local PATH_TARGET=$HOME/`basename "$file"`

    link $PATH_CONF $PATH_TARGET
  done
}
