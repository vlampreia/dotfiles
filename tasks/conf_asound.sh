#!/bin/bash

PATH_CONF=$HOME/dotfiles/files/alsa/asound.conf
PATH_TARGET=/etc/asound.conf

sudo modprobe snd-aloop
sudo sh -c 'echo "snd-aloop" > /etc/modules-load.d/snd-aloop.conf'

if [ -f $PATH_TARGET ]; then
  if [ "$(realpath $PATH_TARGET)" != "$PATH_CONF" ]; then
    sudo mv $PATH_TARGET $PATH_TARGET.bak
    echo "backed up $PATH_TARGET to $PATH_TARGET.bak"
  else
    exit 0
  fi
fi

sudo ln -s $PATH_CONF $PATH_TARGET
echo "Soft linked $PATH_CONF to $PATH_TARGET"
