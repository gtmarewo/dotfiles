echo -n "zsh " # suppress the trailing newline with the option -n

# spaces are required around the == operator for string comparisons within conditional expressions
if [[ $OSTYPE == "linux-gnu"* ]]; then
	echo "on GNU/linux"
	export MY_HOMEBREW_PREFIX=/home/linuxbrew/.linuxbrew
	source $MY_HOMEBREW_PREFIX/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
elif [[ $OSTYPE == "darwin"* ]]; then
	echo "on macOS"
	export MY_HOMEBREW_PREFIX=/opt/homebrew
	source $MY_HOMEBREW_PREFIX/opt/zsh-vi-mode/zsh-vi-mode.plugin.zsh
fi

source $MY_HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $MY_HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $MY_HOMEBREW_PREFIX/share/zsh-you-should-use/you-should-use.plugin.zsh
source $MY_HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
