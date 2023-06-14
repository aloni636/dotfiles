# My dotfiles

Where I store all my config files, dotfiles, init files etc.


# Setup

```bash
$ cd ~ 
$ git clone <repo url>
$ cd dotfiles
$ stow user -t $HOME --adopt
$ sudo stow sys -t / --adopt
$ git reset --hard
```

**Q:** Why `git reset --hard`?

**A:** Stow cannot overwrite existing files found on the system.
Therefore, we allow it to adopt them, overwriting our dotfiles. 
Now, once they are symbolically linked and in our git repo, we revert back to the remote's version


## Note
You may find the history of this repo a little weird. \
That's because nvim config directory was detached (at commit `f4a5737159213a18353b5f15e6d8b377b0544f0f`) 
from this repo into its own repo.

