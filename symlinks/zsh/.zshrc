# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    web-search
    poetry
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

# Created by `pipx` on 2023-12-24 03:20:27
export PATH="$PATH:/Users/santese/.local/bin"

# AutoPkg
export PYTHONPATH="/path/to/autopkglib:$PYTHONPATH"
# bun completions
[ -s "/Users/santese/.bun/_bun" ] && source "/Users/santese/.bun/_bun"
