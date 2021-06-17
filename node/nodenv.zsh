export PATH="$HOME/.nodenv/bin:$HOME/.nodenv/plugins/node-build/bin:$PATH"
nodenv() {
  eval "$(command nodenv init -)"
  nodenv "$@"
}
