export NVM_DIR="$HOME/.nvm"

# NVM installs to ~/.nvm/nvm.sh on linux
if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh"
fi

# NVM installs to /usr/local/opt/nvm/nvm.sh on macos
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  source "/usr/local/opt/nvm/nvm.sh"
fi
