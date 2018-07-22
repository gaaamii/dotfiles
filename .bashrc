alias ctags="/usr/local/bin/ctags"
alias cdbr="cd $HOME/boron"
alias dcs="docker-compose stop"
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcer="docker-compose exec rails"

eval "$(rbenv init -)"

# git completion
source ~/git-completion.bash

# direnv
export EDITOR=vim
eval "$(direnv hook bash)"
