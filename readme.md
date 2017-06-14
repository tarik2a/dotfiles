# Dotfiles
## Overview
This repository gives me a solution to synchronize my dotfiles over all my boxes.

The main tools that I want to sync are:
* Vim: Configuration and plugins
* Git: Global configuration
* Tmux: Configuration
* Zsh: Configuration

Applay vi-mode to my shells.

## Dependencies
You need to to have these tools installed before to proceed with the dotfiles installation:
* Git
* Vim: vim.gnome-py2 (because this version support the "+" register, and I need python for vdebug)
* Zsh: with oh my zsh framework (https://github.com/robbyrussell/oh-my-zsh)
* Tmux

## Installation
To install thoses dotfiles into a new system:
```
$ cd $HOME
$ git clone https://github.com/tarik2a/dotfiles.git .dotfiles
$ ./.dotfiles/bootstrap.sh
```

## Notes
After the syncing you need to edit .gitconfig file with the proper user name and email.

