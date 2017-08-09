navigate() {
    if [ -z "$2" ]
    then
        cd $1
    else
        location=$1
        shift
        cd "${location}/$@"
    fi
}

alias ~="navigate ~"
alias docs="navigate ~/Documents"
alias dl="navigate ~/Downloads"
alias dt="navigate ~/Desktop"
alias h="navigate ~"
alias ws="navigate ~/Workspace"
