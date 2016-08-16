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
alias dt="navigate ~/Desktop"
alias home="navigate ~"
alias ws="navigate ~/Workspace"