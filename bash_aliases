# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias cscope-gui=' cscope -d'
alias cscope-make=' cscope -qRb'
alias tart=' tar tvzf'
alias tarc=' tar cvzf'
alias tarx=' tar xvzf'

# some more ls aliases
alias ll='ls -lF'
alias la='ls -lAh --color'
alias l='ls -CF'
alias lax='la -X'
alias lat='la -rt'

alias mq='hg -R $(hg root)/.hg/patches'
alias vi=vim
alias ostat='stat -c "%a %n"'

# https://github.com/albfan/script-manager
alias cd-script='cd $(script-manager --goto)'

