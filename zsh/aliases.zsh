alias reload!='. ~/.zshrc'
alias r='reload!'

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

# version managers
versions() {
    { echo "\e[1;32mNode.js\e[0m"; nvm version | sed 's/v//'; } | sed -e 'N;s/\n/\t/'
    { echo "\e[1;34mPython\e[0m"; pyenv version | sed 's/\s\(.*\)//'; } | sed -e 'N;s/\n/\t/'
    { echo "\e[1;31mRuby\e[0m"; rbenv version | sed 's/\s\(.*\)//'; } | sed -e 'N;s/\n/\t/'
}
