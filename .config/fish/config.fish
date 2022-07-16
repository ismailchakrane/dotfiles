# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting  

alias ll='exa -al --color=always --group-directories-first'
alias i='doas xbps-install -Sy'
alias u='doas xbps-install -Syu'
alias r='doas xbps-remove -OoR'
alias v='vim'
alias s='doas xbps-query -Rs'
alias condots='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

starship init fish | source
