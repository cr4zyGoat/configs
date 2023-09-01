# Add to ~/.bashrc the following code:
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi


### ALIAS
alias ..="cd .."
alias ll="ls -lh"
alias la="ls -lha"
alias cdtmp='cd $(mktemp -d)'

alias open="xdg-open 2>/dev/null"
alias ssh="TERM='xterm-256color' ssh"

alias t="tmux attach-session || tmux"
alias tls="tmux list-sessions"
alias tas="tmux attach-session"


### FUNCTIONS
shodandb() { curl -sf https://internetdb.shodan.io/$1 | jq . ; }
ipinfo() { curl -sf https://ipinfo.io/$1 | jq . ; }

gethostinfo() {
	target=$1
	if [[ ${target} =~ [a-zA-Z] ]]; then
		json="{\"domain\":\"${target}\"}"
		target=$(dig +short ${target} | tail -n 1)
	else
		json="{}"
	fi

	if [[ -z $target ]]; then
		echo -e "[!] No Domain resolution to IP..." 1>&2
		return 1
	fi

	echo -e "${json}" \
		| jq --argjson data "$(shodandb ${target})" '. + $data' \
		| jq --argjson data "$(ipinfo ${target})" '. + $data' \
		| jq '. | del(.hostname,.anycast,.readme)'
}
