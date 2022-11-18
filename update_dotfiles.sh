git pull --recurse-submodules

fzf/install --no-key-bindings --no-completion --no-update-rc

cd $HOME/.dotfiles/tmux/tmux-mem-cpu-load
cmake .
make
