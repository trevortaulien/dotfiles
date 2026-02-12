# dotfiles
The purpose of this repo is to document the configurations of various things that I use for my system.

## Assumptions
1. This repo is checked out to path: `~/Documents/repos/dotfiles/`
2. The following binaries (or symlinks) exist at `~/tools/`:
    - nvim
    - fzf

## Setup
### Bash Stuff
Add following line to bash rc:
```
source ~/Documents/repos/dotfiles/system/bash_stuff
```

### Neovim
This is written assuming neovim is installed at default location used when built from source per [this link](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start).

Use the following command to create symlink:
```
cd; cd ./.config/; ln -s ~/Documents/repos/dotfiles/nvim nvim
```

Launch neovim run `checkhealth` command and address anything
that is being barked about.

#### Clipboard
If using Mint with Cinnamon install `xsel` and use xsel as
the provider. `:h clipboard` explains in more detail.

### Git
Uncomment and fill out the 'name' and 'email' fields.

Use the following command to create symlink:
```
cd; cd ./.config/; ln -s ~/Documents/repos/dotfiles/git git
```

### Tmux
Use the following command to create symlink:
```
cd; ln -s ~/Documents/repos/dotfiles/tmux/tmux.conf .tmux.conf
```
