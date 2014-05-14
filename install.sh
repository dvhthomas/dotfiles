#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
rm ~/.tmux-osx.conf
ln -s ~/dotfiles/tmux-osx.conf ~/.tmux-osx.conf

# HomeBrew on the Mac to install
if [[ $OSTYPE == "darwin"* ]]; then
    # handle tmux clipboard nicely
    brew install reattach-to-user-namespace
    # get patched fonts for powerline
    cd ~/dotfiles
    mkdir -p ~/bin
    rm ~/bin/safe-reattach-to-user-namespace
    ln -s ~/dotfiles/safe-reattach-to-user-namespace ~/bin/safe-reattach-to-user-namespace
    git clone https://github.com/Lokaltog/powerline-fonts
    cd $OLDPWD
else
    echo "Linux"
    sudo apt-get install python-software-properties python g++ make
    sudo apt-get update
fi


# Managing all bundles with vundle...
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Put any prerequisites for bundles


# Install the bundles
vim +BundleInstall +qall
