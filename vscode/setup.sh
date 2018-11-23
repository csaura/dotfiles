#!/bin/bash

# check this post https://codeburst.io/top-javascript-vscode-extensions-for-faster-development-c687c39596f5

ln -s "$(pwd)"/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

declare -a plugins=(
SirTori.indenticator
abusaidm.html-snippets
dbaeumer.vscode-eslint
eamodio.gitlens
esbenp.prettier-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
humao.rest-client
mohsen1.prettify-json
ms-vscode.go
rebornix.ruby
wayou.vscode-todo-highlight
wix.vscode-import-cost
);

for plugin in ${plugins[*]};
do
  code --install-extension $plugin
done

