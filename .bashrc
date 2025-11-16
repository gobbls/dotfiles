#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -AoXh --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias vim="nvim"
alias vi="nvim"

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

PS1='\e[1;35m[\u@\h \W]\$\e[m '
