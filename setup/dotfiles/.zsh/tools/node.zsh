# ------------------------------
# Node config 
# ------------------------------

export NVM_DIR="$HOME/.nvm"

# Load nvm if the script exists
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load nvm bash completion if it exists
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


export PNPM_HOME="/home/bchk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ------------------------------
# End Node config 
# ------------------------------
