# add external plugins for zsh
[ -f "$HOME/.config/zsh/external_plugins.zsh" ] && source "$HOME/.config/zsh/external_plugins.zsh"

# enter a directory without typing cd
setopt autocd

# initialise the zsh completion
autoload -Uz compinit
compinit

# start the starship prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(/home/linuxbrew/.linuxbrew/bin/starship init zsh)"

# aliases
[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"

# coloured man pages
[ -f "$HOME/.config/zsh/coloured_man_pages.zsh" ] && source "$HOME/.config/zsh/coloured_man_pages.zsh"

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# deal.II
export DEAL_II_DIR=~/bin/deal.II

export PATH=$PATH:~/.local/bin
