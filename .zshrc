# Prompt
eval "$(starship init zsh)"

# Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Taming homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_BOOTSNAP=1

# Ruby
eval "$(rbenv init -)"

# More PATH
export PATH="$PATH:$HOME/go/bin/"
export PATH="/usr/local/sbin:$PATH"

# Dev
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
