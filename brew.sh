#!/bin/zsh

# Install Xcode from the App Store before running this script

echo "Starting bootstrapping..."

if test ! $(which brew); then
    echo "Installing Hombrew..." 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update

PACKAGES=(
    swiftlint
    loc
    tmux
    tree
)

brew install ${PACKAGES[@]}
brew cleanup

CASKS=(
    google-chrome
    sourcetree
    alfred
    appcleaner
    dropbox
    paw
    daisydisk
    visual-studio-code
    1password
)

brew cask install ${CASKS[@]}
