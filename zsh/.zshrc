#==============================#
# `zsh-newuser-install` stuff. #
#==============================#

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt autocd
bindkey -e

#======================#
# `compinstall` stuff. #
#======================#

zstyle :compinstall filename '/home/gobbls/.zshrc'
autoload -Uz compinit
compinit

#==========#
# Exports. #
#==========#

export EDITOR=nvim
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

#============#
# Functions. #
#============#

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

#=========#
# Prompt. #
#=========#

PS1="%F{cyan}%n:%f %~ \$ "

#==========#
# Sources. #
#==========#

[ -f ~/.zsh_aliases ] && \. ~/.zsh_aliases
zsh_highlighting="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[ -f "$zsh_highlighting" ] && \. "$zsh_highlighting" 
