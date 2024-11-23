# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"




alias wezterm='flatpak run org.wezfurlong.wezterm'
alias spotify='flatpak run com.spotify.Client'



export DOTFILES="$HOME/.dotfiles"
export EDITOR="nvim"
export GIT_EDITOR=$EDITOR
