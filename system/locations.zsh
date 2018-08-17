export DOCUMENTS="$HOME/Documents"
export DOWNLOADS="$HOME/Downloads"
export DESKTOP="$HOME/Desktop"

local cd_or_open() {
  if [[ -d $1 ]]; then
    cd $1
  else
    open $1
  fi
}

docs() {
  cd_or_open "$DOCUMENTS/$1"
}
# compdef "_files -W '$DOCUMENTS'" docs

dl() {
  cd_or_open "$DOWNLOADS/$1"
}
# compdef "_files -W '$DOWNLOADS'" dl

dt() {
  cd_or_open "$DESKTOP/$1"
}
# compdef "_files -W '$DESKTOP'" dt
