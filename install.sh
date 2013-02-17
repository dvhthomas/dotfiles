# Assumes that you've clone the dotfiles repo into $HOME/dotfiles
rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# Jedi code completion plugin for vim needs this
# python library
pip install jedi

# All vim plugins managed as Git submodules. Grab the lot
cd ~/dotfiles
git submodule update --init --recursive
git submodule update --recursive
cd ~
