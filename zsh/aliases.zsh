alias reload!='. ~/.zshrc'
alias r='reload!'

alias cls='clear' # Good 'ol Clear Screen command

# common commands
alias l='ls -la'
alias diff='colordiff'
alias grep='grep --color=auto'

# directory navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# miscellaneous aliases
alias ports='netstat -tulanp'
alias tree='tree -C --prune'
alias serve='python -m http.server'
alias clip='pbcopy'

# shorthand
alias d='tmux detach'
alias o='open'
alias v='vim'
alias x='exit'
