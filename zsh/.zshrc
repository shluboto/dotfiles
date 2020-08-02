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
source $DOT_DIR/private/.env

# Paths:
export PATH="$RBENV_ROOT/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$(brew --prefix)/coreutils/libexec/gnubin:$PATH"

# Completions:
autoload -Uz compinit && compinit -i -d $GLOBAL_CACHE_DIR/zsh/zcompdump-$ZSH_VERSION

# Helpers:
source $DOT_DIR/zsh/helpers/reload
source $DOT_DIR/zsh/helpers/prompt
source $DOT_DIR/zsh/helpers/code
source $DOT_DIR/zsh/helpers/git
source $DOT_DIR/zsh/helpers/ssh
source $DOT_DIR/zsh/helpers/ls

cd $DEVEL_DIR
eval "$(rbenv init -)"
