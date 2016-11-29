#!/usr/bin/env bash

sudo apt-get install zsh
if ! fgrep -q '/usr/bin/zsh' /etc/shells; then
  echo '/usr/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/bin/zsh;
fi;

npm update npm -g
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
nvm use --lts

# Pure zsh theme
npm install --global pure-prompt

# symlink in the zsh pure prompt theme
dest=/usr/local/share/zsh/site-functions;src=$HOME/.nvm/versions/node/v6.9.1/lib/node_modules/pure-prompt; mkdir -p $dest && sudo ln -sf \"$src/pure.zsh\" $dest/prompt_pure_setup && ln -sf \"$src/async.zsh\"
