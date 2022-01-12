if [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin/sbin:$PATH"
    export PATH="/usr/local/opt/sqlite/bin:$PATH"
    export DYLD_LIBRARY_PATH=/usr/local/opt/sqlite/lib:/usr/lib
else
    alias nvim='$HOME/bin/nvim.appimage'
fi

alias vim='nvim'
export EDITOR=nvim
export ZOG="Hello world"
