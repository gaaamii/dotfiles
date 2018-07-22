#/bin/bash

# set symlinks on Home directory
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/dotfiles/.vim/colors $HOME/.vim/colors
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
