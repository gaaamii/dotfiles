#/bin/bash

# set symlinks on Home directory
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/dotfiles/.vim/colors/molokai.vim $HOME/.vim/colors/molokai.vim
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/Brewfile $HOME/Brewfile

# install homebrew
if ! [ `which brew` ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# brew install
brew tap Homebrew/bundle
brew bundle
brew bundle cleanup

# install anyenv
# https://github.com/riywo/anyenv
if ! [ `which anyenv` ]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(anyenv init -)"' >> ~/.bashrc

  # shell relogin
  exec $SHELL -l
fi

# install *env
anyenv install rbenv
anyenv install ndenv

# shell relogin
exec $SHELL -l
