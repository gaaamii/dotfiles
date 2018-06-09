alias ctags="/usr/local/bin/ctags"
alias cdbr="cd $HOME/boron"
alias dcs="docker-compose stop"
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcer="docker-compose exec rails"

eval "$(rbenv init -)"

# git completion
. ~/git-completion.bash
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

# direnv
export EDITOR=vim
eval "$(direnv hook bash)"
