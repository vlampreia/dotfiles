#!/bin/bash

git submodule init
git submodule update

DIR_CONF=$HOME/dotfiles/files/zsh
DIR_TARGET=$HOME

for file in $DIR_CONF/.zsh*; do
  echo $file
done
