#!/bin/bash

link () {
  local path_source=$1
  local path_target=$2

  if [ -f "$path_target" -o -d "$path_target" -o -h "$path_target" ]; then
    if [ "$(realpath $path_target)" != $path_source ]; then
      sudo mv $path_target $path_target.bak
      echo "backed up $path_target to $path_target.bak"
    else
      echo "$path_target already linked"
      return 0
    fi
  fi
  sudo ln -s $path_source $path_target
  echo "linked $path_target to $path_source"
}

#makes for cleaner output
create_dir () {
  local path=$1

  if [ ! -d $path ]; then
    mkdir $path
  else
    echo "$path already exists"
  fi
}
