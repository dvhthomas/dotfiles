#! /usr/bin/zsh

# NeoVim Configuration

if [ -f $HOME/.config/nvim/init.vim ]; then
    rm $HOME/.config/nvim/init.vim
else
    mkdir -p $HOME/.config/nvim
fi

ln -s $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim

# Manage all NeoVim plugins with vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
nvim +PlugInstall +qa
nvim +UpdateRemotePlugins +qa

# TMUX

if [ -f $HOME/.tmux.conf ]; then
    rm $HOME/.tmux.conf
fi

ln -s "$HOME/dotfiles/tmux.conf" "$HOME/.tmux.conf"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
. $HOME/.tmux/plugins/tpm/bin/install_plugins
