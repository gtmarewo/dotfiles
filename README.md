# dotfiles

Make a nectarous command line.

## Description

* _zsh_ (z-shell) is a Unix command interpreter (shell).
  * zsh is like _BASH_ with more features, e.g, 
    * changing into a directory without typing `cd`,
    * programmable command completion, 
    * a history mechanism.
  * zsh is the default shell on macOS.
  * While BASH is the default shell on many Linux distros, zsh usually comes pre-installed. 
  * zsh can do much more with the help of _plugins_, e.g `zsh-vi-mode` for editing the command line using the powerful text-based tex editor `vim`.
  * The configuration file for zsh is `~/.zshrc`.
* _brew_ is dubbed the _missing package manager_ for macOS.
* _fzf_ is a fuzzy finder for files.
* _fd_ is a simple, user-friendly alternative to `find`.
* -tmux_ is terminal multiplexer.
* _wezterm_ is a cross-platform terminal emulator.
* _starship_ is a minimal, fast and highly customisable command prompt for any shell such as zsh.
  * The default configuration file for starship is `~/.config/starship.toml`.
* _nvim_ is a text editor based on _vim_.
* _zoxide_ a smarter `cd` command.
* _stow_ is a symlink farm manager.

## Installation

### zsh

```
if [[ "$(cat /etc/os-release)" == *"Fedora"* ]]; then
  [[ -f /usr/bin/zsh ]] || dnf check-update && sudo dnf install zsh
  chsh -s $(which zsh)
elif [[ "$(cat /etc/os-release)" == *"Ubuntu"* ]]; then
  [[ -f /usr/bin/zsh ]] || sudo apt update && sudo apt install zsh
  chsh -s $(which zsh)
fi
```

### brew

```
[[ "$(cat /etc/os-release)" == *"Ubuntu"* ]] && sudo apt update && sudo apt install curl
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### fzf, fd, tmux and wezterm (needs a nerd-font) 

```
brew install fzf fd tmux font-caskaydia-mono-nerd-font
[[ "$OSYPE" == "darwin"* ]] && brew install --cask wezterm
if [[ "$(cat /etc/os-release)" == *"Fedora"* ]]; then
  sudo dnf copr enable wezfurlong/wezterm-nightly
  sudo dnf install wezterm
elif [[ "$(cat /etc/os-release)" == *"Ubuntu"* ]]; then
  curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
  echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | \
  sudo tee /etc/apt/sources.list.d/wezterm.list
  sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg
  sudo apt update && sudo apt install wezterm
fi
```

### zsh plugins

```
brew install zsh-autocomplete zsh-autosuggestions zsh-completions zsh-lovers zsh-syntax-highlighting zsh-vi-mode zsh-you-should-use
```

### starship

```
brew install starship
```

### nvim
```
brew install neovim
```

### zoxide
```
brew install zoxide
```

### stow

```
brew install stow
```

## Configuration

```
export NOW=$(date "+%Y%m%d%H%M")
[[ -f ~/.zshrc ]] && mv -v ~/.zshrc ~/.zshrc.$NOW
[[ -f ~/.wezterm.lua ]] && mv -v ~/.wezterm.lua ~/.wezterm.lua.$NOW
[[ -d ~/.config/starship ]] && mv -v ~/.config/starship ~/.config/starship.$NOW
[[ -d ~/.config/nvim ]] && mv -v ~/.config/nvim ~/.config/nvim.$NOW
[[ -d ~/.config/zsh ]] && mv -v ~/.config/zsh ~/.config/zsh.$NOW
git clone https://github.com/gtmarewo/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```

## Authors

Gerald Marewo <gtmarewo@gmail.com>
