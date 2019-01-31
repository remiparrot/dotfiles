# dotfiles

## mpd, mpc and ncmpcpp install
Install the packages : `sudo pacman -S mpd mpc ncmpcpp`.
Then enable the mpd service with : `systemctl --user enable mpd` (and start it)
Add files to the music folder, for example : `ln -s /run/media/fasol/[mounted dd]/[music folder] /home/fasol/Music/`
Update database with mpc : `mpc update`
Finally, create one playlist :
```
mpc listall | mpc add
mpc save my_playlist
```
