#!/bin/sh

# tools
sudo apt -y install zsh unzip curl vim git ripgrep lsof

# vim config
wget https://gist.githubusercontent.com/yistc/29363df11d7b67d7b79850c6b39942b0/raw/vimrc
mv vimrc $HOME/.vimrc
