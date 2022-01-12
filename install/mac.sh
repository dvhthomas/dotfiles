echo "Setting up software for Mac OS"
xcode-select --install
brew install htop
brew install wget
brew install tree
brew install tmux
brew install fzf
. /usr/local/opt/fzf/install

brew install the_silver_searcher
brew install tig
brew tap caskroom/fonts
brew cask install \
    font-source-code-pro \
    font-fira-code \
    font-fira-mono \
    font-fira-mono-for-powerline \
    font-fira-sans
brew tap caskroom/cask
brew cask install \
		minikube \
		wget \
		google-cloud-sdk \
		nvim \
		quicklook-json \
		qlmarkdown \

brew cleanup

