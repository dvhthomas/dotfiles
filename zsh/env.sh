#!/bin/zsh

export CLICOLOR=1
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin/sbin"

# Start up pyenv
alias vim='nvim'
export EDITOR=nvim

export GOPATH=$HOME/go
export PATH=${GOPATH}/bin:${PATH}

export FZF_DEFAULT_COMMAND='ag --ignore *.pyc -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
