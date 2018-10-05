#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
# using: cd ; git clone http://github.com/dvhthomas/dotfiles
# Assumes you've got golang, nodejs, Python3 on path.

# Point to the right files

if [ -f $HOME/.config/nvim/init.vim ]; then
    rm $HOME/.config/nvim/init.vim
else
    mkdir -p $HOME/.config/nvim
fi

ln -s $HOME/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

if [ -f $HOME/.gitconfig ]; then
    rm ~/.gitconfig
fi

ln -s ~/dotfiles/gitconfig ~/.gitconfig


git clone https://github.com/Lokaltog/powerline-fonts

# Do any OS-specific bits
if [[ $OSTYPE == "darwin"* ]]; then
    echo "Setting up Mac OS"
    brew update
    brew install htop
    # Official fork of exhuberant-ctags
    brew install --HEAD universal-ctags/universal-ctags/universal-ctags
    brew install wget
    brew install the_silver_searcher
else
    echo "Setting up Linux"
    sudo apt-get install silversearcher-ag
    sudo apt-get install wget
		sudo apt-get install most
fi

if [[ condition ]]; then
	#statements
fi
# Get Python ready
pip3 install --upgrade pip

# Install Go dependencies
go get -u github.com/mdempsky/gocode

# Node it!
npm install -g neovim

# Manage all NeoVim plugins with vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
nvim +PlugInstall +qa
nvim +UpdateRemotePlugins +qa

# TMUX

rm $HOME/.tmux.conf
ln -s $HOME/dotfiles/tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
