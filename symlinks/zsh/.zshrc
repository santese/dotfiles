# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    web-search
    )

source $ZSH/oh-my-zsh.sh

precmd() {
    source ~/.aliases.zsh
}

# Starship
eval "$(starship init zsh)"

#FNM
eval "$(fnm env --use-on-cd)"

# pnpm
export PNPM_HOME="/Users/santese/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
