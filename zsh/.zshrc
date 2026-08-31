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

[ -f ~/.zsh_aliases ] && . ~/.zsh_aliases
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
