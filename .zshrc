# fuzzy matching of completions for when you mistype them

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# igonre completion functions for commands you don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

# add external plugins for zsh
[[ -f "$HOME/.config/zsh/external_plugins.zsh" ]] && source "$HOME/.config/zsh/external_plugins.zsh"

# enter a directory without typing cd
setopt autocd

# initialise zsh completion
autoload -Uz compinit
compinit

# history mechanism
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt share_history

# initialise brew in the zsh shell

[[ "$OSTYPE" == *"linux-gnu"* ]] && export MY_BREW_PREFIX=/home/linuxbrew/.linuxbrew
[[ "$OSTYPE" == *"darwin"* ]] && export MY_BREW_PREFIX=/opt/homebrew
eval "$($MY_BREW_PREFIX/bin/brew shellenv zsh)"

# initialise the starship prompt in zsh
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$($MY_BREW_PREFIX/bin/starship init zsh)"

# set up fzf key bindings and fuzzy completions
source <(fzf --zsh)

# aliases
[[ -f "$HOME/.config/zsh/aliases.zsh" ]] && source "$HOME/.config/zsh/aliases.zsh"

# coloured man pages
[[ -f "$HOME/.config/zsh/coloured_man_pages.zsh" ]] && source "$HOME/.config/zsh/coloured_man_pages.zsh"

# deal.II
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export DEAL_II_DIR=~/bin/deal.II
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export DEAL_II_CONF_SILENT=ON
    . /Applications/deal.II.app/Contents/MacOS/dealii.conf
fi

export PATH=$PATH:$HOME/.local/bin
