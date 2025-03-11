# Aliases files

alias ll='ls -lh'

alias untar='tar xvzf'

# General

alias open='xdg-open'

# Tools

alias dbx='distrobox'

# GNOME exclusive

if [[ -v XDG_SESSION_DESKTOP ]] && [[ $XDG_SESSION_DESKTOP == "gnome" ]]; then
	alias trash='gio trash'
fi

# Git

alias gaa='git add .'
alias gcm='git commit -m'
alias gpo='git push -u origin main'


# Ollama
alias ollama-start='systemctl --user start ollama.service'
alias ollama-stop='systemctl --user stop ollama.service'
