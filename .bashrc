# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

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

# Move this to a  bashrc.d

if [ -f /run/.containerenv ]; then
	true
else
	eval "$(oh-my-posh init bash --config ~/.local/share/oh-my-posh/themes/catppuccin_mocha.omp.json)"
fi
## When moving this to bashrc.d, make sure to include the proper checks
## for running intel etc etc etc
export LIBVA_DRIVER_NAME=iHD
