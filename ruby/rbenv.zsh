export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
rbenv() {
  eval "$(command rbenv init -)"
  rbenv "$@"
}
