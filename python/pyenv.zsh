export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
pyenv() {
  eval "$(command pyenv init -)"
  pyenv "$@"
}
