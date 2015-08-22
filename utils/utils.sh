#!/bin/bash

link () {
  local path_source=$1
  local path_target=$2

  if [ -f "$path_target" -o -d "$path_target" -o -h "$path_target" ]; then
    if [ "$(realpath $path_target)" != $path_source ]; then
      sudo mv $path_target $path_target.bak
      printf "backed up $path_target to $path_target.bak\n"
    else
      printf "$path_target already linked\n"
      return 0
    fi
  fi
  sudo ln -s $path_source $path_target
  printf "linked $path_target to $path_source\n"
}

#makes for cleaner output
create_dir () {
  local path=$1

  if [ ! -d $path ]; then
    mkdir $path
  else
    printf "$path already exists\n"
  fi
}

contains () {
  #local array=$1
  #local string=$2
  local string=$1
  shift
  local array=("${@}")

  local env
  for env in "${array[@]}"; do
    if [ "$env" == "$string" ]; then
      return 0
    fi
  done
  return 1
}
