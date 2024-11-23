# .bash_profile

alias wezterm='flatpak run org.wezfurlong.wezterm'
alias spotify='flatpak run com.spotify.Client'


export DOTFILES="$HOME/.dotfiles"
export EDITOR="nvim"
export GIT_EDITOR=$EDITOR
export XDG_CONFIG_HOME=$DOTFILES
export BACKGROUND_IMAGE="$DOTFILES/background/background.png"

. "$DOTFILES/.bashrc"
