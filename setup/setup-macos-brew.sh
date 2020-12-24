# First install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Upgrade brew
brew upgrade

# CLI Tools
brew install tmux
brew install git
brew install yarn
brew install lftp
brew install python
brew install n
brew install go
brew install minimal-racket

# Casks
brew install --cask 1password
brew install --cask docker
brew install --cask iterm2
brew install --cask discord
brew install --cask turbo-boost-switcher
brew install --cask postman
brew install --cask firefox
brew install --cask transmission
brew install --cask telegram
brew install --cask figma
brew install --cask visual-studio-code
brew install --cask zoomus
brew install --cask microsoft-teams
brew install --cask parsec
brew install --cask basictex
brew install --cask avibrazil-rdm
brew install --cask wireguard-tools

# Emacs
brew tap railwaycat/emacsmacport
brew install --cask emacs-mac 
