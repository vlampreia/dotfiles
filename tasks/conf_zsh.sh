#!/bin/bash

conf_zsh () {
  DIR="$(dirname "$0")"; source $DIR/lib.sh

  git submodule init
  git submodule update

  FILES=".zsh*"
  DIR_CONF=$HOME/dotfiles/files/zsh
  DIR_TARGET=$HOME

  for file in $DIR_CONF/$FILES; do
    PATH_CONF=`realpath $file`
    FILE_NAME=`basename "$file"`
    PATH_TARGET=$HOME/$FILE_NAME

    if [ -f $PATH_TARGET -o -h $PATH_TARGET ]; then
      if [ "$(realpath $PATH_TARGET)" != "$PATH_CONF" ]; then
        mv $PATH_TARGET $PATH_TARGET.bak
        echo "backed up $PATH_TARGET to $PATH_TARGET.bak"
      else
        echo "$PATH_TARGET already linked"
        continue;
      fi
    fi

    ln -s $PATH_CONF $PATH_TARGET
    echo "soft linked $PATH_CONF to $PATH_TARGET"
  done
}
