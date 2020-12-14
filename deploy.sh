git submodule update --init --recursive
fzf/install --no-key-bindings --no-completion --no-update-rc

mv $HOME/.zshrc $HOME/.zshrc.old
ln -fs $HOME/.dotfiles/zshrc $HOME/.zshrc
mv $HOME/.tmux.conf $HOME/.tmux.conf.old
ln -fs $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.old
ln -fs $HOME/.dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
