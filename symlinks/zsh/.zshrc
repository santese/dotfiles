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

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Bun completions
[ -s "/Users/santese/.bun/_bun" ] && source "/Users/santese/.bun/_bun"

# The Fuck
eval $(thefuck --alias)

# Handle Pckage Manager Aliases
p() {
  if [[ -f bun.lockb ]]; then
    command bun "$@"
  elif [[ -f pnpm-lock.yaml ]]; then
    command pnpm "$@"
  elif [[ -f yarn.lock ]]; then
    command yarn "$@"
  elif [[ -f package-lock.json ]]; then
    command npm "$@"
  else
    command pnpm "$@"
  fi
}

# Added by Windsurf
export PATH="/Users/santese/.codeium/windsurf/bin:$PATH"

# Add Environment Variables
source ~/.env/env.zshrc
