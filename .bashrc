#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Base Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Load Custom Aliases 
source ~/.aliasrc

# Old PS1
# PS1='[\u@\h \W]\$'

# Load new PS1
source ~/.bash_prompt

# Run neofetch on startup
neofetch
