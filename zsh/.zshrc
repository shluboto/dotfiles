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

# Paths:
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Environment variables:
source $HOME/.env
source $PRV_DIR/.env

# Paths:
export PATH="$(brew --prefix)/coreutils/libexec/gnubin:$PATH"
export PATH="$RBENV_ROOT/bin:$PATH"

# Completions:
autoload -Uz compinit && compinit -i -d $GLOBAL_CACHE_DIR/zsh/zcompdump-$ZSH_VERSION

# Helpers:
source $DOT_DIR/zsh/helpers/reload
source $DOT_DIR/zsh/helpers/prompt
source $DOT_DIR/zsh/helpers/ssh
source $DOT_DIR/zsh/helpers/ls

eval "$(rbenv init -)"
export PATH="/usr/local/opt/node@12/bin:$PATH"
