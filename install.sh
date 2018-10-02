#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
# using: cd ; git clone http://github.com/dvhthomas/dotfiles
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

rm $HOME/.tmux.conf
ln -s $HOME/dotfiles/tmux.conf ~/.tmux.conf

git clone https://github.com/Lokaltog/powerline-fonts

# HomeBrew on the Mac to install
if [[ $OSTYPE == "darwin"* ]]; then
    echo "Mac OS"
else
    echo "Linux"
    #sudo apt-get install python-software-properties python g++ make
    #sudo apt-get update
fi


# Manage all NeoVim plugins with vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

