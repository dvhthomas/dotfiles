# Add this to existent ~/.bashrc or ~/.bash_profile
# if [ -f ~/dotfiles/bash_profile ]; then
#    source ~/dotfiles/bash_profile
# fi

export PS1='\$ '
<<<<<<< HEAD

# Assumes NeoVim is already on the PATH
alias vim='nvim'
export EDITOR=nvim
export GOPATH=$HOME/go
export PATH=${GOPATH}/bin:${PATH}

=======
set -o vi
alias tmux="TERM=screen-256color-bce tmux"
export EDITOR=vi
>>>>>>> df6a764333ec3f3b0c5ea31392be8f3c5a082e4d
