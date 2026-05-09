# common aliases

alias bd='brew update'
alias bg='brew upgrade'
alias bi='brew install'
alias br='brew remove'
alias bs='brew search'

alias ls='eza'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# OS specific aliases

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	alias sdc="dnf check-update"
	alias sdu="sudo dnf upgrade"
	alias sdi="sudo dnf install"
	alias sdr="sudo dnf remove"
	alias visit='/opt/visit3_4_2/bin' 
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias visit="/Applications/VisIt.app/Contents/Resources/bin/visit"
	alias paraview="/Applications/Paraview-6.1.0.app/Contents/MacOS/paraview"
	alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Code'
fi
