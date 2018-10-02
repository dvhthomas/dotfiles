# Add this to existent ~/.bashrc or ~/.bash_profile
# if [ -f ~/dotfiles/bash_profile ]; then
#    source ~/dotfiles/bash_profile
# fi

export PS1='\$ '

# Assumes NeoVim is already on the PATH
alias vim='nvim'
export EDITOR=nvim
export GOPATH=$HOME/go
export PATH=${GOPATH}/bin:${PATH}

