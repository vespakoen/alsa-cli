#!/bin/bash

# takes a volume level from 0 to 100, inclusive, as command line argument
# example use: ./path/to/alsactrl/set-volume.sh 80
# make sure the scripts are executable: sudo chmod +x ./path/to/alsactrl/*.sh

volume=$1
if [ $volume -lt 0 ]; then
  volume=0
elif [ $volume -gt 100 ]; then
  volume=100
fi

action=$2
if [ "$action" != "mute" ]; then
  action="unmute"
  is_muted=0
else
  is_muted=1
fi

echo $volume > db/current_volume
echo $is_muted > db/is_muted

amixer set Master $volume% $action > /dev/null
amixer set Headphone $volume% $action > /dev/null
amixer set Speaker $volume% $action > /dev/null
amixer set "Bass Speaker" $volume% $action > /dev/null
amixer set PCM $volume% $action > /dev/null

echo "Running:"
  echo "
  amixer set Master $volume% $action > /dev/null
  amixer set Headphone $volume% $action > /dev/null
  amixer set Speaker $volume% $action > /dev/null
  amixer set "Bass Speaker" $volume% $action > /dev/null
  amixer set PCM $volume% $action > /dev/null
  "
