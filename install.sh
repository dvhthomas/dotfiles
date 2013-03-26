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
if [[ "$OSTYPE" == "darwin"* ]]; then
    # handle tmux clipboard nicely
    brew install reattach-to-user-namespace
    # get patched fonts for powerline
    cd ~/dotfiles
    git clone https://github.com/Lokaltog/powerline-fonts
    cd $OLDPWD
else
    echo "Linux"
fi

# Managing all bundles with vundle...
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Put any prerequisites for bundles
# Jedi code completion plugin for vim needs this
# python library
pip install jedi

# Install the bundles
vim +BundleInstall +qall

cd ~/dotfiles
#git submodule update --init --recursive
#git submodule update --recursive
cd ~
