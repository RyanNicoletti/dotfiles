#!/bin/bash

echo "Sym linking dot files..."
ln -s $HOME/Desktop/projects/dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/Desktop/projects/dotfiles/starship.toml $HOME/.config/starship.toml
echo "Done"
