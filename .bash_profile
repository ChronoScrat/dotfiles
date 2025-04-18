# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

if [ -f ~/.profile ]; then
    . ~/.profile
fi

# Source Rust env

if [ -f ~/.cargo/env ]; then
    . "$HOME/.cargo/env"
fi
