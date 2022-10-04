# .dotfiles

Home repository for all my config files, with init-setup scripts to use when installing a new distro !

## init.sh

`init.sh` will create symlinks in the home directory to the config files in this repo. Any pre-existing config file will be moved to ~/.backup.

`restore.sh` will remove all created symlinks and move files in .backup to their original location, if they exist, then delete the folder if empty.
