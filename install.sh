#!/bin/sh
# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
<<<<<<< HEAD
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
=======
# and that python is already installed:
#       $ brew install python
#       $ pip install --upgrade pip
#       $ brew install --upgrade setuptools
#       $ pip install --user powerline-status

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
>>>>>>> df6a764333ec3f3b0c5ea31392be8f3c5a082e4d
else
    echo "Linux"
    #sudo apt-get install python-software-properties python g++ make
    #sudo apt-get update
fi


# Manage all NeoVim plugins with vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

