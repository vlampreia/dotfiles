#!/bin/bash

configure () {
  local DIR_ROOT=$1

  local PATH_CONF=$DIR_ROOT/asound.conf
  local PATH_TARGET=/etc/asound.conf

  sudo modprobe snd-aloop
  sudo sh -c 'echo "snd-aloop" > /etc/modules-load.d/snd-aloop.conf'

  link $PATH_CONF $PATH_TARGET
}
