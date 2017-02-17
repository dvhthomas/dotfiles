#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
# and that python is already installed:
#       $ brew install python
#       $ pip install --upgrade pip
#       $ brew install --upgrade setuptools

rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
#rm ~/.gitconfig
#ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
rm ~/.tmux-osx.conf
ln -s ~/dotfiles/tmux-osx.conf ~/.tmux-osx.conf

# HomeBrew on the Mac to install
if [[ $OSTYPE == "darwin"* ]]; then
    # handle tmux clipboard nicely
    brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste
    # get patched fonts for powerline
    cd ~/dotfiles
    mkdir -p ~/bin
    rm ~/bin/safe-reattach-to-user-namespace
    ln -s ~/dotfiles/safe-reattach-to-user-namespace ~/bin/safe-reattach-to-user-namespace
    cd $OLDPWD
else
    echo "Linux"
    sudo apt-get install python-software-properties python g++ make
    sudo apt-get update
fi

git clone https://github.com/Lokaltog/powerline-fonts

# Managing all bundles with vundle...
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Put any prerequisites for bundles


# Install the bundles
vim +BundleInstall  +qall
vim +VimProcInstall +qall

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

