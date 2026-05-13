# common aliases

if [[ "$(which brew)" == *"brew" ]]; then
	alias bd='brew update'
	alias bG='brew upgrade'
	alias bi='brew install'
	alias br='brew remove'
	alias bs='brew search'
fi

[[ -f "$(which eza)" ]] && alias ls=eza

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# OS specific aliases

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	[[ -f /opt/visit3_4_2/bin/visit ]] && alias visit='/opt/visit3_4_2/bin/visit' 
	# Linux distribution specific aliases: corrected on May 12 at 09:14
	export LSB_DISTRIBUTOR=$(lsb_release -i)
	if [[ "$LSB_DISTRIBUTOR" == *"Fedora"* ]]; then
		alias dc="dnf check-update"
		alias dU="sudo dnf upgrade"
		alias di="sudo dnf install"
		alias dr="sudo dnf remove"
		alias dr="dnf search"
	elif [[ "$LSB_DISTRIBUTOR" == *"Ubuntu"* ]]; then
		alias ad="sudo apt update"
		alias au="sudo apt upgrade"
		alias ai="sudo apt install"
		alias ar="sudo apt remove"
		alias as="apt search"
	fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
	[[ -d "/Applications/VisIt.app" ]] && alias visit="/Applications/VisIt.app/Contents/Resources/bin/visit"
	[[ -d "/Applications/ParaView-6.1.0.app" ]] && \
	alias paraview="/Applications/ParaView-6.1.0.app/Contents/MacOS/paraview"
	[[ -d "/Applications/Visual Studio Code.app" ]] && \
	alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Code'
fi
