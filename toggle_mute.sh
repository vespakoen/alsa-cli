#!/bin/bash

# toggles everything on and off
# example use: ./path/to/alsactrl/toggle_mute.sh
# make sure the scripts are executable: sudo chmod +x ./path/to/alsactrl/*.sh

current_volume=`cat db/current_volume`
muted=`cat db/is_muted`
if [ "$muted" == "1" ]; then
  /bin/bash ./set.sh $current_volume unmute
  echo "Unmuted"
else
  /bin/bash ./set.sh $current_volume mute
  echo "Muted"
fi
