export EXENV_ROOT="$HOME/.exenv"
export PATH="$EXENV_ROOT/bin:$PATH"
exenv() {
  eval "$(command exenv init -)"
  exenv "$@"
}
