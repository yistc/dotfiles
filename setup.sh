#!/bin/sh
sudo apt -y install zsh unzip curl vim git ripgrep lsof

cat >>$HOME/.zshrc<<EOF
alias ssh-ls="rg '^Host ([^*]+)$' ~/.ssh/config"
alias git-all="gaa && gcam '1' && gp"
alias surge-cli='/Applications/Surge.app/Contents/Applications/surge-cli'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias lsl="ls -lF"
alias lsal="ls -alF"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias path='echo -e ${PATH//:/\\n}'
EOF

# vim config
wget https://gist.githubusercontent.com/yistc/29363df11d7b67d7b79850c6b39942b0/raw/vimrc
mv vimrc $HOME/.vimrc
