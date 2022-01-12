# Linux-only installations

sudo apt-get install build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev \
    libncursesw5-dev wget curl git -y

sudo apt-get install tree tmux silversearcher-ag bat -y

# Fuzzy Finder
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

mkdir $HOME/bin

# NeoVim
NVIM=nvim.appimage
if [ ! -f "$NVIM" ]; then
    pushd $HOME/bin
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x $NVIM
    popd
fi