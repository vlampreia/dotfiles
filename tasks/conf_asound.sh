#!/bin/bash

conf_home () {
  local DIR_ROOT=$1
  source $DIR_ROOT/tasks/lib.sh

  local PATH_CONF=$DIR_ROOT/files/alsa/asound.conf
  local PATH_TARGET=/etc/asound.conf

  sudo modprobe snd-aloop
  sudo sh -c 'echo "snd-aloop" > /etc/modules-load.d/snd-aloop.conf'

  link $PATH_CONF $PATH_TARGET
}