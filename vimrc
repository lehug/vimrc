syntax on
set number
set cindent
"set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set incsearch
let &termencoding=&encoding
set fileencodings=utf-8,gbk

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h12,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h12,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 12,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Hack\ 12,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " 另一种选择, 指定一个vundle安装插件的路径
  "call vundle#begin('~/some/path/here')

  " 让vundle管理插件版本,必须
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-fugitive'
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-surround'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'tomasr/molokai'
  Plugin 'townk/vim-autoclose'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'mileszs/ack.vim'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'majutsushi/tagbar'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'xolox/vim-misc'
  Plugin 'xolox/vim-easytags'
"language
  Plugin 'pangloss/vim-javascript'
  Plugin 'mxw/vim-jsx'
  Plugin 'tpope/vim-rails'


  " 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
  " 忽视插件改变缩进,可以使用以下替代:
  "filetype plugin on
  "
  " 简要帮助文档
  " :PluginList       - 列出所有已配置的插件
  " :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
  " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
  " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
 
  colorscheme molokai
  nmap <F8> :TagbarToggle<CR>
