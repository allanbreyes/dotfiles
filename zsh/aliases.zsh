alias reload!='. ~/.zshrc'
alias r='reload!'

alias cls='clear' # Good 'ol Clear Screen command

# common commands
alias ls='ls --color=auto'
alias l='ls -la'
alias diff='colordiff'
alias grep='grep --color=auto'

# exa replacement
alias ls='exa'

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

# safety nets
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# miscellaneous aliases
alias ports='netstat -tulanp'
alias tree='tree -C --prune'
alias serve='python -m http.server'
alias clip='xclip -selection clipboard'

# shorthand
alias d='tmux detach'
alias o='xdg-open'
alias v='vim'
alias x='exit'
