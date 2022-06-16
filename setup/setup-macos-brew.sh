# First install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Upgrade brew
brew upgrade

# CLI Tools
brew install git lftp
brew install nodenv rbenv
brew install minimal-racket

# Casks
brew install --cask 1password
brew install --cask iterm2
brew install --cask discord
brew install --cask firefox
brew install --cask transmission
brew install --cask figma
brew install --cask visual-studio-code
brew install --cask basictex

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-iosevka font-iosevka-aile

# Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-native-comp
