# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias ll='ls -lart --color'
alias psu='ps -fu $USER'
alias c='clear'
alias h='history'
alias grep='grep --color'
if [[ -f /bin/vim || -f /usr/bin/vim ]]; then
	alias vi=vim
fi
