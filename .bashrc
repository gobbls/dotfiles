# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#################
# == aliases == #
#################

# Git
alias gs='git status'
alias gd='git diff'

alias ga='git add'
alias gap='git add --patch'
alias gc='git commit'

alias gp='git push'
alias gu='git pull'

alias gl='git log'
alias gb='git branch'

alias gi='git init'
alias gcl='git clone'

# System
alias ls='ls -oXh --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias ffs='fastfetch'

# Applications
alias yt-dlp-a='yt-dlp \
	--ignore-config \
	--extract-audio \
	--audio-format "mp3" \
	--sponsorblock-remove "all" \
	--output "%(title)s.%(ext)s"'

alias yt-dlp-v='yt-dlp \
	--ignore-config \
	--sponsorblock-remove "all" \
	--output "%(title)s.%(ext)s"'

# immediately hop into dotfiles
alias dots="cd ~/Dotfiles && nvim ."

#################
# == exports == #
#################

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$PATH:/home/a13k5/.local/bin"

# .NET
export DOTNET_CLI_TELEMETRY_OPTOUT=true

################
# == prompt == #
################

PS1='[\u@\h \W]\$ '

# Oh-my-posh (for last line of config!)
eval "$(oh-my-posh init bash --config /home/a13k5/Dotfiles/oh-my-posh/kanagawa.omp.json)"
