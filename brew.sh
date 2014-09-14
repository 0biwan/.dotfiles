#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Add the Homebrew location to your $PATH and source your bash or zsh profile file after adding/saving
export PATH="/usr/local/bin:$PATH"

# Check if .tmp folder exists and create if don't
if [[ ! -d "/Users/joaoveiga/.tmp" && ! -L "/Users/joaoveiga/.tmp" ]] ; then
	echo "Creating .tmp folder"
    mkdir /Users/joaoveiga/.tmp
fi

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Instal node
brew install node

# Build MongoDB from Source with SSL Support
brew install mongodb --with-openssl

# Install wget with IRI support
brew install wget --enable-iri

#git
brew install git

#imagemagic
brew install imagemagick

#mysql
brew install mysql

# Remove outdated versions from the cellar
brew cleanup
