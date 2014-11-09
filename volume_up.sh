#!/bin/bash

# takes a volume increase step, inclusive, as command line argument
# example use: ./path/to/alsa-cli/volume_up.sh 2
# make sure the scripts are executable: sudo chmod +x ./path/to/alsa-cli/*.sh

step=$1
current_volume=`cat db/current_volume`
new_volume=$(echo "$current_volume+$step" | bc)

/bin/bash ./set.sh $new_volume
