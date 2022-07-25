# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec doas tartx -- -keeptty
    end
end

set fish_greeting  
set EDITOR "vim"
set VISUAL "less"
set PAGER "less"

export NNN_USE_EDITOR=1

alias ll='exa -al --color=always --group-directories-first'
alias i='doas xbps-install -S'
alias u='doas xbps-install -u xbps; doas xbps-install -Syu'
alias r='doas xbps-remove -OoR'
alias v='vim'
alias q='doas xbps-query -Rs'
alias condots='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias wific='doas wpa_supplicant -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf'

starship init fish | source
