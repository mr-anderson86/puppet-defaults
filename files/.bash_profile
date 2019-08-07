set -o emacs
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# Constant Definition
declare -r HLT_COLOR="\[\e[31;1m\]"
declare -r STD_COLOR="\[\e[0m\]"
export PS1="[${HLT_COLOR}\u@\h${STD_COLOR} \W]$ "

# If anyone wants to add his own env variables and aliases, add and use below file
if [ -f ~/.local.ini ]; then
	. ~/.local.ini
fi
