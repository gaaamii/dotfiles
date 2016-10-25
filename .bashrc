alias ctags="/usr/local/bin/ctags"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home`

# See this page -> http://takatoshiono.hatenablog.com/entry/2015/01/09/012040
# if you don't know about what this line means.
eval "$(rbenv init -)"

# nvm
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm
export C_INCLUDE_PATH=/usr/local/include/

# added by travis gem
[ -f /Users/kmktwt_1441/.travis/travis.sh ] && source /Users/kmktwt_1441/.travis/travis.sh

# git completion
. ~/git-completion.bash
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '
