#!/bin/bash

# Define colors for better output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Print header
echo "Starting dotfiles installation..."

# Get the absolute path to the dotfiles directory
DOTFILES_DIR="$(pwd)"

# Create the .config directory if it doesn't exist
if [ ! -d "$HOME/.config" ]; then
  echo "Creating $HOME/.config directory..."
  mkdir -p "$HOME/.config"
fi

# Create the .config/nvim directory if it doesn't exist
if [ ! -d "$HOME/.config/nvim" ]; then
  echo "Creating $HOME/.config/nvim directory..."
  mkdir -p "$HOME/.config/nvim"
fi

# Copy Neovim configuration
echo "Copying Neovim configuration..."
if [ -d "$DOTFILES_DIR/nvim" ]; then
  cp -r "$DOTFILES_DIR/nvim" "$HOME/.config/"
  echo -e "${GREEN}Neovim configuration installed successfully.${NC}"
else
  echo -e "${RED}Error: Neovim configuration not found in $DOTFILES_DIR/nvim${NC}"
  exit 1
fi

# Copy Starship configuration
echo "Copying Starship configuration..."
if [ -f "$DOTFILES_DIR/starship.toml" ]; then
  cp "$DOTFILES_DIR/starship.toml" "$HOME/.config/starship.toml"
  echo -e "${GREEN}Starship configuration installed successfully.${NC}"
else
  echo -e "${RED}Error: Starship configuration not found in $DOTFILES_DIR/starship.toml${NC}"
  exit 1
fi

echo -e "${GREEN}All dotfiles have been installed successfully!${NC}"
