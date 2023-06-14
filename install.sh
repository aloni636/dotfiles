#!/usr/bin/env bash
# stow only have --adopt flag for overwriting files, but its OUR files, not system files
# therefore, we use git to keep track of any changes made to OUR files and revert them

# stowing to root requires root access
# so before running script make sure he knows root password
sudo -v || exit 1

# store all uncommitted changes in temp commit
git add --all && git commit -m temp
STORED_TEMP=$?

# unlink stow directories
stow -D user -t $HOME
sudo stow -D sys -t /
# relink stow directories
stow user -t $HOME --adopt
sudo stow sys -t / --adopt

# revert changes made by --adopt flag
git reset --hard

# if added temp commit, remove it and populate working tree with its content
# (like how it was before running the script, only now all files are symlinked)
[ $STORED_TEMP -eq 0 ] && git reset HEAD~1



