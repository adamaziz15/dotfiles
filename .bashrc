#!bin/bash/

# Default editor
# export EDITOR="nvim"
export EDITOR="code --wait"

# Add code executable to PATH
export PATH="$PATH:/usr/local/bin/code"

# git bash prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
