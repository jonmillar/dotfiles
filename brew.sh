#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.

brew install bash
brew tap homebrew/versions
brew install bash-completion2

# zsh shell
brew install zsh zsh-completions

# Quick! NPM stuff!
brew install node

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install ucspi-tcp # `tcpserver` etc.
brew install xz

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

# Casks
brew tap caskroom/cask

brew cask install hyper
brew cask install google-chrome
brew cask install flux
brew cask install rescuetime
brew cask install disk-inventory-x
brew cask install screenflow
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install slack
brew cask install transmission
brew cask install iconping

# not on brew
# now app - https://zeit.co/app

# Remove outdated versions from the cellar.
brew cleanup
