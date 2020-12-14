# Setup fzf
# ---------
export PATH="${PATH:+${PATH}:}${HOME}/.zsh-amz/fzf/bin"

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${HOME}/.zsh-amz/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${HOME}/.zsh-amz/fzf/shell/key-bindings.zsh"
