# Setup fzf
# ---------
if [[ ! "$PATH" == */home/bartek/.fzf/bin* ]]; then
  export PATH="$PATH:/home/bartek/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/bartek/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/bartek/.fzf/shell/key-bindings.bash"

