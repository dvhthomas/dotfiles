#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
# using: cd ; git clone http://github.com/dvhthomas/dotfiles
# Assumes you've got golang

# Point to the right files

xcode-select --install

if [ -f $HOME/.gitconfig ]; then
    rm ~/.gitconfig
fi

ln -s ~/dotfiles/gitconfig ~/.gitconfig


# Do any OS-specific bits
if [[ $OSTYPE == "darwin"* ]]; then
    echo "Setting up Mac OS"
    # Install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    # Temporarily tell homebrew where to put things
    export PATH="/usr/local/bin:$PATH"
    echo "Install all the useful software..."
	brew install htop
	brew install wget
	brew install tree
	brew install tmux
        brew install fzf
	brew install the_silver_searcher
	brew install nodejs
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
        quicklook-csv
    echo "Install all the useful software..."
    brew install zsh
    # ...and now we have zsh, let's point to the correct
    # shell configuration
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    if [ -f $HOME/.zshrc ]; then
        rm ~/.zshrc
    fi 

    chsh -s $(which zsh)
    ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
    source ~/.zshrc

	brew cleanup
else
    echo "Setting up Linux"
    sudo apt-get install silversearcher-ag
    sudo apt-get install wget
		sudo apt-get install most
fi

# Get Python ready
pyenv install 3.7.4
pyenv global 3.7.4
pyenv rehash
pip3 install --upgrade pip

# Install Go dependencies
go get -u github.com/mdempsky/gocode

# Node it!
#npm install -g neovim
if [ -f $HOME/.config/nvim/init.vim ]; then
    rm $HOME/.config/nvim/init.vim
else
    mkdir -p $HOME/.config/nvim
fi

ln -s $HOME/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# Manage all NeoVim plugins with vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
nvim +PlugInstall +qa
nvim +UpdateRemotePlugins +qa

# TMUX
if [ -f $HOME/.tmux.conf ]; then
    rm ~/.tmux.conf
fi

ln -s $HOME/dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
