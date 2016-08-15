alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# common commands
alias ls='ls --color=auto'
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
alias serve='python -m SimpleHTTPServer'
alias clip='xclip -selection clipboard'

# shorthand
alias e='exit'
alias o='xdg-open'
alias x='exit'
