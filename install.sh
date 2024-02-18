#! /bin/bash

git clone https://github.com/broothie/.dotfiles.git ~/.dotfiles
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z.git ~/.zsh/z

touch ~/.dotfiles/machine.zshrc

echo "source ~/.dotfiles/main.zshrc" > ~/.zshrc
