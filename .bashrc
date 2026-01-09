#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#############
## ALIASES ##
#############

alias ls='ls -AoXh --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias vim="nvim"
alias vi="nvim"

alias dots='nvim ~/dotfiles'
alias notes='nvim ~/obsidian-notes'

# default yt-dlp flags
alias yt-dlp-d='yt-dlp --cookies-from-browser firefox'

# yt-dlp audio flags
alias yt-dlp-a='yt-dlp \
	--cookies-from-browser firefox \
	--ignore-config \
	--extract-audio \
	--audio-format "mp3" \
	--sponsorblock-remove "all" \
	--output "%(title)s.%(ext)s"'

# yt-dlp video flags
alias yt-dlp-v='yt-dlp \
	--cookies-from-browser firefox \
	--ignore-config \
	--sponsorblock-remove "all" \
	--output "%(title)s.%(ext)s"'

#########################
## ENVIRONMENT EXPORTS ##
#########################

export PATH=$PATH:/home/gobbls/.local/bin
export EDITOR=nvim

##########
## MISC ##
##########

# yazi function to change to current directory when exiting yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# initialize oh-my-posh
eval "$(oh-my-posh init bash)"

# deno stuff
. "/home/gobbls/.deno/env"
source /home/gobbls/.local/share/bash-completion/completions/deno.bash
