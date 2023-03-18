#!/bin/sh

# Determine OS platform
PLATFORM=$(uname | tr "[:upper:]" "[:lower:]")
# If Linux, try to determine specific distribution
if [ "$PLATFORM" = "linux" ]; then
    DISTRO=$(hostnamectl | grep 'Operating System' | cut -d':' -f2 | cut -d' ' -f2)
fi
# For everything else (or if above failed), just use generic identifier
[ "$DISTRO" = "" ] && export DISTRO=$PLATFORM
ARCH=$(arch)

echo "OS platform detected: $PLATFORM $DISTRO ($ARCH)"

if [ "$PLATFORM" = "linux" ]; then
    if [ "$DISTRO" = "Debian" ] || [ "$DISTRO" = "Ubuntu" ]; then
        sudo apt -y install cmake make zsh neovim tmux python3-pip autojump fortune curl
    fi
fi

git submodule update --init --recursive
fzf/install --no-key-bindings --no-completion --no-update-rc

mv $HOME/.zshrc $HOME/.zshrc.old
ln -fs $HOME/.dotfiles/zshrc $HOME/.zshrc
mv $HOME/.tmux.conf $HOME/.tmux.conf.old
ln -fs $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.old
ln -fs $HOME/.dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim

cd $HOME/.dotfiles/tmux/tmux-mem-cpu-load
cmake .
make

mkdir -p $HOME/.config/nvim
mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.old
ln -fs $HOME/.dotfiles/init.vim $HOME/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

pip3 install pynvim chuck-says

if [ "$PLATFORM" = "linux" ]; then
    if [ "$DISTRO" = "Debian" ] || [ "$DISTRO" = "Ubuntu" ]; then
        [[ ! -d $HOME/.config/terminator ]] && mkdir -p $HOME/.config/terminator
        ln -fs $HOME/.dotfiles/terminator/config $HOME/.config/terminator/config
    fi
fi

