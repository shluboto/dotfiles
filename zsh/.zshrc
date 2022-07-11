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
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

# Environment variables:
source $HOME/.env
source $PRV_DIR/.env

# Paths:
export PATH="$(brew --prefix)/coreutils/libexec/gnubin:$PATH"
export PATH="$RBENV_ROOT/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"

# Completions:
autoload -Uz compinit && compinit -i -d $HOME/.zcompdump-$ZSH_VERSION

# Helpers:
source $DOT_DIR/zsh/helpers/reload
source $DOT_DIR/zsh/helpers/prompt
source $DOT_DIR/zsh/helpers/ssh
source $DOT_DIR/zsh/helpers/ls

eval "$(rbenv init -)"
