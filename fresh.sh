#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # This should only be run on a M1 chip
  # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  # eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
 rm -rf $HOME/.zshrc
 ln -s .zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Create a Developer directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Developer

# Create Developer subdirectories
mkdir $HOME/Developer/@remark-embedder
mkdir $HOME/Developer/CodeSandbox
mkdir $HOME/Developer/KentCDodds

# Clone GitHub repositories
./clone.sh

# Symlink the Mackup config file to the home directory
ln -s .mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source ./.macos
