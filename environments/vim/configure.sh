#!/bin/bash
shopt -s extglob

# vim setup

configure () {
  local DIR_ROOT=$1

  local file
  for file in $DIR_ROOT/.!(.|); do
    local PATH_CONF=`realpath $file`
    local PATH_TARGET=$HOME/`basename "$file"`

    link $PATH_CONF $PATH_TARGET
  done
}
