export PATH="$HOME/.nodenv/bin:$HOME/.nodenv/plugins/node-build/bin:$PATH"
nodenv() {
  eval "$(command nodenv init -)"
  nodenv "$@"
}

if ! [ -x "$(command -v nvm)" ]; then
  alias nvm="echo 'nvm is disabled'"
fi

