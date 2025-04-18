# Aliases files

# General
alias ll='ls -lh'
alias la='ls -lha'
alias untar='tar xvzf'

# Misclicks
alias çs='ls'
alias car='cat' # I may one day want to use this one

# Desktop
if [[ -v XDG_SESSION_DESKTOP ]]; then
	alias open='xdg-open'
fi

# GNOME exclusive
if [[ -v XDG_SESSION_DESKTOP ]] && [[ $XDG_SESSION_DESKTOP == "gnome" ]]; then
	alias trash='gio trash'
fi

# Git
alias gaa='git add .'
alias gcm='git commit -m'
alias gce='git commit'
alias gpo='git push -u origin'
alias gpr='git pull --rebase'

# Distrobox
alias dbx='distrobox'

# Podman
alias p='podman'
alias pri='podman run -it --rm'

# Ollama
alias ollama-start='systemctl --user start ollama.service'
alias ollama-stop='systemctl --user stop ollama.service'
