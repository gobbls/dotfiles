# `zsh-newuser-install` stuff
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt autocd
bindkey -e

# `compinstall` stuff
zstyle :compinstall filename '/home/gobbls/.zshrc'
autoload -Uz compinit
compinit

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="%F{cyan}%n:%f %~ \$ "

alias ls='ls --color=auto'
alias la='ls -vlAFo --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias t='tmux'
alias v='vim'
alias yt-dlp='yt-dlp -o "%(title)s.%(ext)s"'
alias dots='cd ~/.dotfiles && nvim . && cd -'
alias conf='cd ~/.config && nvim . && cd -'
alias notes='cd ~/notes && nvim . && cd -'
alias bins='cd ~/bin && nvim . && cd -'
alias reboot-into-bios='sudo systemctl reboot --firmware-setup'

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

export EDITOR=nvim
export PATH="$PATH:$HOME/.local/bin:$HOME/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$(go env GOPATH)/bin"

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
