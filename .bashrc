export VISUAL="vim"
export EDITOR="$VISUAL"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias rhm='nmcli con down HereWhy && nmcli con up HereWhy'
alias shrugg='echo "¯\_(ツ)_/¯" | xclip'
alias shrugc='echo "¯\_(ツ)_/¯" | xclip -selection clipboard'

eval "$(direnv hook bash)"
