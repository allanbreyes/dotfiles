export NVM_DIR="/home/allan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export NODE_VERSION=$(nvm current)
export NODE_PATH="$NODE_PATH:/home/allan/.nvm/versions/node/$NODE_VERSION/lib/node_modules"
