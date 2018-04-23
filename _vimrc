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
"source $VIMRUNTIME/mswin.vim
"behave mswin
" TODO 设置leader键
let mapleader=" "
let g:maplesder=" "
" 开启语法高亮
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encode Settings 编码设置
" 参考：http://mounui.com/147.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语言设置
" 菜单语言
set langmenu=zh_CN.UTF-8
" 帮助文档
set helplang=cn

" 设置文件编码为utf-8
set encoding=utf-8
" 普通模式下的编码设置
"set termencoding=utf-8
" 自动判断编码是时依次尝试以下编码
set fencs=utf-8,gbk,chinese,big5,cp936,gb18030,gb2312,utf-16
" Use Unix as the standard file type
set ffs=unix,dos,mac
" 遇到Unicode值大于255的文本，不必等到空格在折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B

" vim在windows下的编码设置
if has("win32")
    set enc=chinese
else
    set enc=utf-8
endif

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings 基础配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动的时候不显示援助乌干达儿童提示
set shortmess=atI
" 历史容量
set history=1000
" 检测文件类型
"filetype on
" 针对不同文件类型采用不同的缩进格式
"filetype indent on
" 允许使用插件
"filetype plugin on
" 开启文件类型检测，启用插件和缩进
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
" 配置backspace 从行首和行末可以跳到另一行
" set backspace=eol,start,indent
" set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Settings 显示设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI界面下窗口字体设置
" 设置窗口位置 （距离屏幕左上角的距离）
"winpos 5 5
" 设置窗口大小 （40行，155列）
"set lines=40 columns=155
" 设置字体 （Consolas字体 大小14）
set guifont=Consolas:h14:cANSI

" 隐藏工具栏
set guioptions-=T
"隐藏菜单栏
set guioptions-=m
"设置配色方案
colorscheme molokai
" 在状态栏显示正在输入的命令
" set showcmd
" 在左下角显示当前vim模式
" set showmode

" 显示当前列号
set ruler
" 突出显示当前列
" set cursorcolumn
" 突出显示当前行
" set cursorline
" 光标移动时，上下方总会保留相应行数
set scrolloff=5
" TODO 命令行高度
" set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" 显示行号
set number
" 取消换行
set nowrap

" 自动缩进
set autoindent
" 智能缩进
set smartindent

" tab相关变更
" 设置tab键的宽度
set tabstop=4
" 每次缩进对应的空格数
set shiftwidth=4
" 退格键可以一次删掉4个空格
set softtabstop=4
set smarttab
" Tab自动转化为空格
set expandtab
set shiftround
" C系列缩进
set cindent

" 插入括号时，短暂跳转到匹配的括号上
set showmatch
" 跳转到配对括号上的时间，默认1/10 秒
set matchtime=2

" 搜索相关
" 搜索忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase
" 高亮search文本
set hlsearch
" 开启增量搜索模式
set incsearch

" 代码折叠
set foldenable
" 折叠方法
set foldmethod=indent
" 关闭的折叠级别
set foldlevel=99
" 配置代码折叠键盘映射
map <leader>zz :call ToggleFold()<CR>
let g:FoldMethod = 0
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Others 其他设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc文件修改后自动加载
if has("win32")
    autocmd! bufwritepost _vimrc source %
else
    autocmd! bufwritepost .vimrc source %
endif

" 关闭vi兼容模式
set nocompatible
" 启用系统剪贴板
set clipboard=unnamed

" 自动补全 参考：http://mounui.com/212.html
" 让vim补全菜单行为和一般IDE一致 （使用<C-p>,<C-n>弹出提示窗口）
set completeopt=preview,menu
" 增强模式中命令行自动完成
set wildmenu
" 文件模式列表 （忽略的文件模式）
set wildignore+=*.swp,*.bak,*.pyc,*.class,.svn
"set wildmode=list:longest  " 列表形式展示候选
set ttyfast
" 离开插入模式后自动关闭预览窗口
au InsertLeave * if pumvisible() == 0|pclose|endif
" 回车即选中补全提示列表里当前项
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" 自动补全选择选项方向键映射
imap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
imap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
imap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
imap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"自动补全
"inoremap ( ()<ESC>i
"inoremap " ""<ESC>i
"imap ' ''<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i
imap < <><ESC>i
imap {<CR> {<CR>}<ESC>O
"自动补全命令时候使用菜单式匹配列表
"set wildmenu
"autocmd filetype ruby,eruby set omnifunc=rubycomplete#complete
"autocmd filetype python set omnifunc=pythoncomplete#complete
"autocmd filetype javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd filetype html set omnifunc=htmlcomplete#completetags
"autocmd filetype css set omnifunc=csscomplete#completecss
"autocmd filetype xml set omnifunc=xmlcomplete#completetags
"autocmd FileType java set omnifunc=javacomplete#Complet
" set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle配置 插件管理工具
" 配置参考：http://mounui.com/179.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nocompatible              " 去除VI一致性,必须
" filetype off                  " 必须
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

" 插件列表
Plugin 'VundleVim/Vundle.vim'           " Vundle插件管理工具
Plugin 'altercation/vim-colors-solarized' " 配色方案
Plugin 'molokai'		                " 配色方案
Plugin 'DoxygenToolkit.vim'		        " 注释文档生成
Plugin 'VimTweak'					    " 背景透明插件
"Plugin 'SuperTab'                      " 补全记忆插件
Plugin 'AutoComplPop'                   " 自动代码提示

" All of your Plugins must be added before the following line
call vundle#end()
"filetype plugin indent on
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
map <M-1> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 10) <CR>
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>
map <M-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>
map _+ <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize", 1) <CR>
map _- <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize", 0) <CR>

"************************************************
" SuperTab配置 自动补全记忆插件
" 参考：http://mounui.com/217.html
"************************************************
" 补全模式
"let g:SuperTabRetainCompletionType = 2
" 补全方式
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

"autocomplpop插件,一个字母即可补全 
let g:acp_behaviorKeywordLength = 1
let g:acp_mappingDriven = 1

"color  
hi Pmenu guibg=#444444  
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff 
au FileType php setlocal dict+=$VIM/vimfiles/bundle/AutoComplPop/dict/php_funclist.txt  

"************************************************
" DoxygenToolkit配置 注释插件
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
