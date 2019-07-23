#!bin/bash

[ -f "$HOME/.bashrc" ] && source $HOME/.bashrc # Load bashrc if present

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Use vi key bindings in terminal
set -o vi

# FZF
[ -f "$HOME/.fzf.bash" ] && source $HOME/.fzf.bash

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adamabdelaziz/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/adamabdelaziz/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adamabdelaziz/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/adamabdelaziz/Downloads/google-cloud-sdk/completion.bash.inc'; fi
