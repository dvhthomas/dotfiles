echo "Setting up software for Mac OS"
xcode-select --install
brew install htop
brew install svn
brew install wget
brew install tree
brew install tmux
brew install fzf
$(brew --prefix)/opt/fzf/install

brew install the_silver_searcher
brew install tig
brew install bat
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew install \
    font-source-code-pro \
    font-fira-code \
    font-fira-mono \
    font-fira-mono-for-powerline \
    font-fira-sans \
    font-jetbrains-mono
brew install \
    nvim \
    quicklook-json \
    qlmarkdown \

brew cleanup

