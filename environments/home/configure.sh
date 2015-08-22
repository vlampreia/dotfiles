#!/bin/bash
shopt -s extglob

# ~ setup

configure () {
  local DIR_ROOT=$1

  for file in $DIR_ROOT/.!(.|); do
    PATH_CONF=`realpath $file`
    FILE_NAME=`basename "$file"`
    PATH_TARGET=$HOME/$FILE_NAME

    git config --global core.editor vim

    link $PATH_CONF $PATH_TARGET
  done
}
