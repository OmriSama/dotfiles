# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ogabay/.fzf/bin* ]]; then
  export PATH="$PATH:/home/ogabay/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ogabay/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ogabay/.fzf/shell/key-bindings.zsh"

