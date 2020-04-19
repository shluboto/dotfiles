# No error without matches
setopt +o NOMATCH

# Configure history
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

# Environment variables:
source $HOME/.env

# Enable zsh completions:
autoload -Uz compinit && compinit -i

# Functions:
source $DOT_DIR/zsh/functions/git
source $DOT_DIR/zsh/functions/set_prompt
source $DOT_DIR/zsh/functions/ssh

# Aliases:
source $DOT_DIR/zsh/aliases/system
source $DOT_DIR/zsh/aliases/git

# Paths:
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$(brew --prefix)/opt/coreutils/libexec/gnubin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/.rvm/bin"
