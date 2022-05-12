#!/bin/sh
apt -y install zsh unzip curl vim git exa ripgrep lsof
cat >>$HOME/.zshrc<<EOF
alias ls='exa'
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

cat >>~/.vimrc<<EOF
"不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible
" 在底部显示，当前处于命令模式还是插入模式
set showmode
"在屏幕右下角显示未完成的指令输入
set showcmd
"支持使用鼠标
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set encoding=utf-8
"256色
set t_Co=256
"语法高亮
syntax on
"开启文件类型检查，并且载入与该类型对应的缩进规则
"比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
filetype on
filetype indent on
"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent
"按下 Tab 键时，Vim 显示的空格数
set tabstop=4
"在文本上按下>>（增加一级缩进）
"<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=4
"自动将 Tab 转为空格
set expandtab
"Tab 转为多少个空格
set softtabstop=4
"显示行号
set number
"显示相对行号
set relativenumber
"光标当前行高亮
set cursorline
"行宽, 即一行显示多少个字符
set textwidth=80
"自动折行，即太长的行分成几行显示
set wrap
"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行
"也就是说，不会在单词内部折行
set linebreak
"指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2
"垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
"在状态栏显示光标的当前位置（位于哪一行哪一列）
set ruler
"显示匹配括号
set showmatch
"搜索时，高亮显示匹配结果
set hlsearch
"输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
"搜索时忽略大小写
set ignorecase
"如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感
"其他情况都是大小写不敏感。
"比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
set smartcase
set nobackup
"不创建交换文件
set noswapfile
"设置备份文件、交换文件、操作历史文件的保存位置
"结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名。
"set backupdir=~/.vim/.backup//  
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//
"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况
"默认的工作目录是打开的第一个文件的目录
"该配置可以将工作目录自动切换到，正在编辑的文件的目录
set autochdir
"出错时，不要发出响声
set noerrorbells
"出错时，发出视觉提示，通常是屏幕闪烁
set visualbell
"Vim 需要记住多少次历史操作
set history=200
"打开文件监视
"如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set autoread
"如果行尾有多余的空格（包括 Tab 键）
"该配置将让这些空格显示成可见的小方块
set listchars=tab:»■,trail:■
set list
EOF