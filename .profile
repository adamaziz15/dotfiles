#!bin/bash

export ALIAS_FILE=~/.config/bash/aliases
export FN_FILE=~/.config/bash/functions
export CREDS_FILE=~/.config/.credentials
export NVIMRC=~/.config/nvim/init.vim

source $ALIAS_FILE
source $FN_FILE
source $CREDS_FILE

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export PS1=$'\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\xf0\x9f\xa4\x91$ '

# FZF Config
# Includes hidden files
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude node_modules --exclude bower_components'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

# Customize git prompt
export GIT_PROMPT_END_ROOT=$'\n\[\033[0;37m\]$(date +%H:%M)\[\033[0;0m\] \xf0\x9f\xa4\x91 # '
export GIT_PROMPT_END_USER=$'\n\[\033[0;37m\]$(date +%H:%M)\[\033[0;0m\] \xf0\x9f\xa4\x91 $ '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
