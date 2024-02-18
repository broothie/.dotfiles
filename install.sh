#! /bin/bash

git clone https://github.com/broothie/.dotfiles.git "$HOME/.dotfiles"
echo "source $HOME/.dotfiles/main.zshrc" > "$HOME/.zshrc"
