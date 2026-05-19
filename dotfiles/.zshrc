# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gobbls/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias la='ls -vlAFo --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias t='tmux'
alias v='nvim'
alias yt-dlp='yt-dlp -o "%(title)s.%(ext)s"'
alias dots='cd ~/.dotfiles && nvim dotfiles/.config/nvim/init.lua && cd -'
alias conf='cd ~/.config && nvim . && cd -'
alias notes='cd ~/notes && nvim . && cd -'
alias weather='curl wttr.in/sandefjord'

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

export EDITOR=nvim
export PATH="$PATH:/home/gobbls/tools"

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/kanagawa.omp.json)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
