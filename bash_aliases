# Add to ~/.bashrc the following code:
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi


# Alias
alias ..="cd .."
alias ll="ls -lh"
alias la="ls -lha"
alias cdtmp='cd $(mktemp -d)'

alias open="xdg-open 2>/dev/null"
alias ssh="TERM='xterm-256color' ssh"

alias t="tmux"
alias tls="tmux list-sessions"
alias tas="tmux attach-session"
