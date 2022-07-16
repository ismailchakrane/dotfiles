# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='exa -al --color=always --group-directories-first'
alias i='doas xbps-install -Sy' 
alias u='doas xbps-install -Syu' 
alias r='doas xbps-remove -OoR' 
alias v='vim' 
PS1='[\u@\h \W]\$ '
