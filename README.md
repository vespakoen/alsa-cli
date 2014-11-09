# alsa-cli

Some commands to tame alsa when PulseAudio is installed (which I unfortunately need for skype).

Since skype removed ALSA support (WTF skype!?), I have to keep around PulseAudio (which is normally the first thing I remove from my computer after a clean install)
On my Macbook, with Xubuntu 14.04, the volume keys are not doing what they should do, unmute doesn't work correctly, and volume changes are done in a weird way.

This package remedies my problems by binding my volume keys to some of the scripts.

# install

sudo git clone https://github.com/vespakoen/alsa-cli.git /usr/local/

# use

`./usr/local/alsa-cli/toggle_mute.sh` // mutes and unmutes all the channels

`./usr/local/alsa-cli/volume_up.sh 2` // sets the volume to "old_volume + 2"

`./usr/local/alsa-cli/volume_down.sh 2` // sets the volume to "old_volume - 2"

# internals

Settings (current_volume and is_muted) are stored in a file under `/usr/local/alsa-cli/db`

Let's hope we can remove this thing one day ;)
