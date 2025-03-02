# Aliases files
alias ll='ls -lh'
alias untar='tar xvzf'

# Tools
alias dbx='distrobox'

# Desktop Environment
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
alias gpo='git push -u origin main'
