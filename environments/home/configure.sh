#!/bin/bash
shopt -s extglob

configure () {
  local DIR_ROOT=$1

  for file in $DIR_ROOT/.!(.|); do
    PATH_CONF=`realpath $file`
    FILE_NAME=`basename "$file"`
    PATH_TARGET=$HOME/$FILE_NAME

    link $PATH_CONF $PATH_TARGET
  done
}
