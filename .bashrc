# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

. ./bash_profile

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

source $DOTFILES/liquidprompt/liquidprompt
source $DOTFILES/liquidprompt/themes/powerline/powerline.theme
lp_theme powerline

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"

alias wezterm='flatpak run org.wezfurlong.wezterm'
alias spotify='flatpak run com.spotify.Client'
export EDITOR="nvim"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

finder() {
    local path=$(find ~ | fzf)
    if [ ${#path} = 0 ]; then return; fi
    if [ -f $path ]; then 
        cd $( dirname $path )
        $EDITOR $path
    elif [ -d $path ]; then
        cd $path    
    fi
}

