export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
. "$HOME/.cargo/env"


# Load aliases.
if [ -f "$HOME/sh/.aliases" ]; then
    # shellcheck source=/dev/null
    source "$HOME/sh/.aliases"
fi

# Load inputrc.
if [ -f "$HOME/sh/.inputrc" ]; then
    # shellcheck source=/dev/null
    source "$HOME/sh/.inputrc"
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash


export USE_GKE_GCLOUD_AUTH_PLUGIN=True


