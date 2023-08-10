#Zoxide
eval "$(zoxide init zsh)"

alias ls="exa"
alias ll="exa -l"
alias tree="exa --tree"
alias c='clear'
alias s='source ~/.zshrc'
alias cat='bat'
alias search='fzf'
alias cd="z"
alias ..="z .."
alias ...="z ../.."
alias 'z-'="zz"

# Docker
alias unmount_all_and_exit='unmount_all && exit'
alias d=docker
alias dc=docker-compose
alias dkill="pgrep \"Docker\" | xargs kill -9"


note() {
    echo "date: $(date)" >> $HOME/drafts.txt
    echo "$@" >> $HOME/drafts.txt
    echo "" >> $HOME/drafts.txt
}