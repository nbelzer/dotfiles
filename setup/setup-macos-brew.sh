# First install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Upgrade brew
brew upgrade

# CLI Tools
brew install git direnv asdf ruby-build

# Asdf plugins
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add bun

# Casks
brew install --cask 1password iterm2 visual-studio-code

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-iosevka font-iosevka-aile font-cascadia-code

# Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-native-comp
