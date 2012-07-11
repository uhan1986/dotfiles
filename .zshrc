# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# Aliases for emacs-23.4
# OverRide emacs Commands
alias emacs='emacs-23.4'
alias emacsclient='/usr/local/bin/emacsclient'
# Aliases for emacsclient
alias emacs-daemon='emacs-23.4 --daemon'
alias E='emacsclient -nw'
alias kill-emacs="emacsclient -e '(kill-emacs)'"

# End of lines configured by zsh-newuser-install
