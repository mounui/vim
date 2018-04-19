""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM配置
" Author: mounui
" Email: maojunhui5214@163.com
" Blog: http://mounui.com
" Version: 1.0
" Last Modify: 2018-04-18 23:02
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load Configuration 加载配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 模仿windows快捷键
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
" TODO 设置leader键
" let mapleader=" "
" map <leader>wq :wq<CR>
" 开启语法高亮
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings 基础配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动的时候不显示援助乌干达儿童提示
set shortmess=atI
" 历史容量
set history=1000
" 检测文件类型
filetype on
" 针对不同文件类型采用不同的缩进格式
filetype indent on
" 允许使用插件
filetype plugin on
" 启用自动补全
filetype plugin indent on
" 文件修改之后自动载入
set autoread
" 备份到另一个位置
" set bk
" set backupext=.bak
" set backupdir=/tmp/vimbak/
" 从不备份
set nobackup
" 禁止生成临时文件
set noswapfile
" 文件模式列表
set wildignore+=*.swp,*.bak,*.pyc,*.class,.svn
" 退出vim后内容显示在终端屏幕，可用于查看和复制
set t_ti= t_te=
" 不启用鼠标
set mouse-=a
" 启用鼠标
" set mouse=a
" 输入字符不隐藏鼠标
" set nomousehide
" 去掉输入错误的提示音
set novisualbell
set noerrorbells
set t_vb=
set tm=500
" 魔术
set magic
" set backspace=eol,start,indent
" set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Settings 显示设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 突出显示当前列
" set cursorcolumn
" 突出显示当前行
" set cursorline

set nocompatible
"关闭vi兼容模式
set nocp
"自动补全
"inoremap ( ()<ESC>i
"inoremap " ""<ESC>i
"imap ' ''<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i
imap < <><ESC>i
imap {<CR> {<CR>}<ESC>O
"设置窗口位置
"winpos 5 5
"设置窗口大小
"set lines=40 columns=155
"设置字体
set guifont=Consolas:h14:cANSI
"代码补全
set completeopt=preview,menu
"隐藏工具栏
"set guioptions-=T
"隐藏菜单栏
"set guioptions-=m
"设置配色方案
colorscheme molokai
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim在windows下的编码设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set fencs=utf-8,gbk,chinese,big5,cp936,gb18030,gb2312,utf-16
"set termencoding=utf-8
if has("win32")
	set enc=chinese
else
	set enc=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
"显示行号
set nu
"自动缩进
set autoindent
set cindent
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"tab键的宽度
set tabstop=4
"空格代表制表符
set noexpandtab
set smarttab
"自动补全命令时候使用菜单式匹配列表
"set wildmenu
"autocmd filetype ruby,eruby set omnifunc=rubycomplete#complete
"autocmd filetype python set omnifunc=pythoncomplete#complete
"autocmd filetype javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd filetype html set omnifunc=htmlcomplete#completetags
"autocmd filetype css set omnifunc=csscomplete#completecss
"autocmd filetype xml set omnifunc=xmlcomplete#completetags
"autocmd FileType java set omnifunc=javacomplete#Complet
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle配置 插件管理工具
" 配置参考：http://mounui.com/179.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nocompatible              " 去除VI一致性,必须
" filetype off                  " 必须
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

" 插件列表
Plugin 'VundleVim/Vundle.vim'     " Vundle插件管理工具
Plugin 'altercation/vim-colors-solarized' " 配色方案
Plugin 'molokai'		              " 配色方案
Plugin 'DoxygenToolkit.vim'		    " 注释文档生成
Plugin 'VimTweak'					" 背景透明插件

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" 简要帮助文档
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"************************************************
" VimTweak配置 界面配置工具
" 参考：http://mounui.com/208.html
"************************************************
" 自动透明
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 230)
" 自动最大化
" au GUIEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1)
" 自动置顶
" au GUIEnter * call libcallnr("vimtweak.dll", "EnableTopMost", 1)

" 快捷键设置
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>
map <M-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>

"************************************************
" DoxygenToolkit配置
" 参考：http://mounui.com/202.html
"************************************************
" Lincese
let g:DoxygenToolkit_licenseTag = "\<enter>Copyright (C) 2018 http://mounui.com\<enter>If you have any questions, please contact me email:maojunhui5214@163.com\<enter>You can also leave a message on my blog."
" 注释块首尾
let g:DoxygenToolkit_blockHeader="************************Header*************************"
let g:DoxygenToolkit_blockFooter="************************Footer*************************"
" Author
let g:DoxygenToolkit_authorName="mounui <maojunhui5214@163.com>"
" Fun
let g:DoxygenToolkit_briefTag_funcName="yes"    " 显示函数名
let g:doxygen_enhanced_color=1
