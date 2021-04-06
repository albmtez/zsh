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

pip3 install pynvim

#ln -fs $HOME/.dotfiles/terminator/config $HOME/.config/terminator/config
