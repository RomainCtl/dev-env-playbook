# store cline commands in another history
if [[ "$CLINE_ACTIVE" == true ]]; then
  export HISTFILE="$HOME/.zsh_history_cline"
fi

# Mammouth Code
export PATH="$HOME/.mammouth/bin:$PATH"

# .local/bin
export PATH="$HOME/.local/bin:$PATH"
