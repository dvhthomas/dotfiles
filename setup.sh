# This should be run after `setup-shell.sh`
if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi

ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig


# Do any OS-specific bits
if [[ "$OSTYPE" == "darwin"* ]]; then
    . ./dotfiles/install/mac.sh
else
    . ./dotfiles/install/linux.sh
fi

. ./dotfiles/install/common.sh
. ./dotfiles/install/langs.sh
