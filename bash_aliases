# Add to ~/.bashrc the following code:
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi


# Alias
alias t="tmux"
alias c="clear"
alias ..="cd .."
alias ll="ls -lh"
alias la="ls -lha"
alias hosts="sudo vi /etc/hosts"
alias open="xdg-open 2>/dev/null"


# Functions
function mkp { mkdir {loot,scans,report,exploit}; }

