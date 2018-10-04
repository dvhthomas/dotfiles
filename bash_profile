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

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color


# Little helpers
alias ll="ls -lA"

if [[ $OSTYPE == "darwin"* ]]; then
	alias ctags="`brew --prefix`/bin/ctags"
fi

# Tell fzf that it should use ag instead.
export FZF_DEFAULT_COMMAND='ag --ignore *.pyc -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Let's make `man` pages easier to read
if command -v most > /dev/null 2>&1; then
    export PAGER="most"
fi
