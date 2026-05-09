# fuzzy matching of completions for when you mistype them
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# igonre completion functions for commands you don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

# add external plugins for zsh
[ -f "$HOME/.config/zsh/external_plugins.zsh" ] && source "$HOME/.config/zsh/external_plugins.zsh"

# enter a directory without typing cd
setopt autocd

# initialise zsh completion
autoload -Uz compinit
compinit

# brew
eval "$($HOMEBREW_PREFIX/bin/brew shellenv zsh)"

# start the starship prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$($HOMEBREW_PREFIX/bin/starship init zsh)"

# aliases
[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"

# coloured man pages
[ -f "$HOME/.config/zsh/coloured_man_pages.zsh" ] && source "$HOME/.config/zsh/coloured_man_pages.zsh"

# deal.II
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export DEAL_II_DIR=~/bin/deal.II
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export DEAL_II_CONF_SILENT=ON
    . /Applications/deal.II.app/Contents/MacOS/dealii.conf
fi

