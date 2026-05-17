# dotfiles

Configure zsh - brew - starship - stow - git toolchain.

## Description

* _zsh_ (z-shell) is a Unix command interpreter (shell).
  * zsh is like _BASH_ with more features, e.g, 
    * changing into a directory without typing `cd',
    * programmable command completion, 
    * a history mechanism.
  * zsh is the default shell on macOS.
  * While BASH is the default shell on many Linux distros, zsh usually comes pre-installed. 
  * The command `chsh -s /bin/zsh` sets zsh as the new login shell.
  * zsh can do much more with the help of _plugins_, e.g `zsh-vi-mode` for editing the command line using the powerful text-based tex editor `vim`.
  * The configuration file for zsh is `~/.zshrc`.
* _brew_ is dubbed the _missing package manager_ for macOS.
* _starship_ is a minimal, fast and highly customisable command prompt for any shell such as zsh.
  * The default configuration file for starship is `~/.config/starship.toml`.
* _stow_
* _git_

## Installation

### brew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### starship

`brew install starship`

### stow

`brew install stow`