if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export PS1='\$ '
set -o vi
alias tmux="TERM=screen-256color-bce tmux"
export EDITOR=vi
