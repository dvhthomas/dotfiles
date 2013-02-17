# run this from the repo directory, e.g., /home/you/projects/dotfiles
rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
