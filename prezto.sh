#!/bin/bash


clear
sudo apt-get update && sudo apt-get install -y zsh
# Get prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Backup zsh config if it exists
if [ -f ~/.zshrc ];
   then
       mv ~/.zshrc ~/.zshrc.backup
fi

# Create links to zsh config files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
