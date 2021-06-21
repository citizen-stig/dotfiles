# Prompt
eval "$(starship init zsh)"

# Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

jdk() {
    unset JAVA_HOME
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    java -version
 }
