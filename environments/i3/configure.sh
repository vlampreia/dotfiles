#!/bin/bash

# i3 config

configure () {
  local DIR_ROOT=$1
  local DIR_CONF=$HOME/.i3
  local PATH_CONF=$DIR_ROOT/config
  local PATH_TARGET=$DIR_CONF/config

  create_dir $DIR_CONF

  link $PATH_CONF $PATH_TARGET
}
