if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export PS1='\$ '
export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/Library/Frameworks/GDAL.framework/Programs:/Users/dylanthomas/sources/tmux-MacOSX-pasteboard:$PATH
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# A "distutils.cfg" has been written to:
#   /usr/local/Cellar/python/2.7.3/Frameworks/Python.framework/Versions/2.7/lib/python2.7/distutils
# specifing the install-scripts folder as:
#   /usr/local/share/python
# 
# If you install Python packages via "python setup.py install", easy_install, pip,
# any provided scripts will go into the install-scripts folder above, so you may
# want to add it to your PATH.
# 
# Distribute has been installed, so easy_install is available.
# To update distribute itself outside of Homebrew:
#     /usr/local/share/python/easy_install pip
#     /usr/local/share/python/pip install --upgrade distribute
export PATH=/usr/local/share/python:$PATH

set -o vi
#alias vim='mvim -v'
alias tmux="TERM=screen-256color-bce tmux"
export EDITOR=vim


#export PYTHONPATH=/Library/Python/2.7/site-packages/PIL
#export PYTHONPATH=/Library/Python/2.7/site-packages/gdata
export WORKON_HOME=~/pythons
export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/versions/1.9.3-p194/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
