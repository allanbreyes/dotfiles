export PATH="$HOME/.nodenv/bin:$HOME/.nodenv/plugins/node-build/bin:$PATH"
eval "$(nodenv init -)"

if ! [ -x "$(command -v nvm)" ]; then
  alias nvm="echo 'nvm is disabled'"
fi

