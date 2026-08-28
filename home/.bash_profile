# .bash_profile


. "$HOME/.bashrc"
. "$HOME/.cargo/env"

export BASH_SILENCE_DEPRECATION_WARNING=1

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
