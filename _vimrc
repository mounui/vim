""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM����
" Author: mounui
" Email: maojunhui5214@163.com
" Blog: http://mounui.com
" Version: 1.0
" Last Modify: 2018-04-18 23:02
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load Configuration ��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ģ��windows��ݼ�
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
" TODO ����leader��
let mapleader=" "
let g:maplesder=" "
" �����﷨����
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encode Settings ��������
" �ο���http://mounui.com/147.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��������
" �˵�����
set langmenu=zh_CN.UTF-8
" �����ĵ�
set helplang=cn

" �����ļ�����Ϊutf-8
set encoding=utf-8
" ��ͨģʽ�µı�������
"set termencoding=utf-8
" �Զ��жϱ�����ʱ���γ������±���
set fencs=utf-8,gbk,chinese,big5,cp936,gb18030,gb2312,utf-16
" Use Unix as the standard file type
set ffs=unix,dos,mac
" ����Unicodeֵ����255���ı������صȵ��ո�������
set formatoptions+=m
" �ϲ���������ʱ�������м�ӿո�
set formatoptions+=B

" vim��windows�µı�������
if has("win32")
    set enc=chinese
else
    set enc=utf-8
endif

"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings ��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������ʱ����ʾԮ���ڸɴ��ͯ��ʾ
set shortmess=atI
" ��ʷ����
set history=1000
" ����ļ�����
"filetype on
" ��Բ�ͬ�ļ����Ͳ��ò�ͬ��������ʽ
"filetype indent on
" ����ʹ�ò��
"filetype plugin on
" �����ļ����ͼ�⣬���ò��������
filetype plugin indent on
" �ļ��޸�֮���Զ�����
set autoread
" ���ݵ���һ��λ��
" set bk
" set backupext=.bak
" set backupdir=/tmp/vimbak/
" �Ӳ�����
set nobackup
" ��ֹ������ʱ�ļ�
set noswapfile
" �˳�vim��������ʾ���ն���Ļ�������ڲ鿴�͸���
set t_ti= t_te=
" ���������
set mouse-=a
" �������
" set mouse=a
" �����ַ����������
" set nomousehide
" ȥ������������ʾ��
set novisualbell
set noerrorbells
set t_vb=
set tm=500
" ħ��
set magic
" ����backspace �����׺���ĩ����������һ��
" set backspace=eol,start,indent
" set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Settings ��ʾ����
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI�����´�����������
" ���ô���λ�� ��������Ļ���Ͻǵľ��룩
"winpos 5 5
" ���ô��ڴ�С ��40�У�155�У�
"set lines=40 columns=155
" �������� ��Consolas���� ��С14��
set guifont=Consolas:h14:cANSI

" ���ع�����
set guioptions-=T
"���ز˵���
set guioptions-=m
"������ɫ����
colorscheme molokai
" ��״̬����ʾ�������������
" set showcmd
" �����½���ʾ��ǰvimģʽ
" set showmode

" ��ʾ��ǰ�к�
set ruler
" ͻ����ʾ��ǰ��
" set cursorcolumn
" ͻ����ʾ��ǰ��
" set cursorline
" ����ƶ�ʱ�����·��ܻᱣ����Ӧ����
set scrolloff=5
" TODO �����и߶�
" set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" ��ʾ�к�
set number
" ȡ������
set nowrap

" �Զ�����
set autoindent
" ��������
set smartindent

" tab��ر��
" ����tab���Ŀ��
set tabstop=4
" ÿ��������Ӧ�Ŀո���
set shiftwidth=4
" �˸������һ��ɾ��4���ո�
set softtabstop=4
set smarttab
" Tab�Զ�ת��Ϊ�ո�
set expandtab
set shiftround
" Cϵ������
set cindent

" ��������ʱ��������ת��ƥ���������
set showmatch
" ��ת����������ϵ�ʱ�䣬Ĭ��1/10 ��
set matchtime=2

" �������
" �������Դ�Сд
set ignorecase
" ��һ�������ϴ�д��ĸʱ�Դ�Сд����
set smartcase
" ����search�ı�
set hlsearch
" ������������ģʽ
set incsearch

" �����۵�
set foldenable
" �۵�����
set foldmethod=indent
" �رյ��۵�����
set foldlevel=99
" ���ô����۵�����ӳ��
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
" Others ��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc�ļ��޸ĺ��Զ�����
if has("win32")
    autocmd! bufwritepost _vimrc source %
else
    autocmd! bufwritepost .vimrc source %
endif

" �ر�vi����ģʽ
set nocompatible
" ����ϵͳ������
set clipboard=unnamed

" �Զ���ȫ �ο���http://mounui.com/212.html
" ��vim��ȫ�˵���Ϊ��һ��IDEһ�� ��ʹ��<C-p>,<C-n>������ʾ���ڣ�
set completeopt=preview,menu
" ��ǿģʽ���������Զ����
set wildmenu
" �ļ�ģʽ�б� �����Ե��ļ�ģʽ��
set wildignore+=*.swp,*.bak,*.pyc,*.class,.svn
"set wildmode=list:longest  " �б���ʽչʾ��ѡ
set ttyfast
" �뿪����ģʽ���Զ��ر�Ԥ������
au InsertLeave * if pumvisible() == 0|pclose|endif
" �س���ѡ�в�ȫ��ʾ�б��ﵱǰ��
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" �Զ���ȫѡ��ѡ����ӳ��
imap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
imap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
imap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
imap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"�Զ���ȫ
"inoremap ( ()<ESC>i
"inoremap " ""<ESC>i
"imap ' ''<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i
imap < <><ESC>i
imap {<CR> {<CR>}<ESC>O
"�Զ���ȫ����ʱ��ʹ�ò˵�ʽƥ���б�
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
" Vundle���� ���������
" ���òο���http://mounui.com/179.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nocompatible              " ȥ��VIһ����,����
" filetype off                  " ����
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

" ����б�
Plugin 'VundleVim/Vundle.vim'           " Vundle���������
Plugin 'altercation/vim-colors-solarized' " ��ɫ����
Plugin 'molokai'		                " ��ɫ����
Plugin 'DoxygenToolkit.vim'		        " ע���ĵ�����
Plugin 'VimTweak'					    " ����͸�����
"Plugin 'SuperTab'                      " ��ȫ������
Plugin 'AutoComplPop'                   " �Զ�������ʾ

" All of your Plugins must be added before the following line
call vundle#end()
"filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" ��Ҫ�����ĵ�
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"************************************************
" VimTweak���� �������ù���
" �ο���http://mounui.com/208.html
"************************************************
" �Զ�͸��
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 230)
" �Զ����
" au GUIEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1)
" �Զ��ö�
" au GUIEnter * call libcallnr("vimtweak.dll", "EnableTopMost", 1)

" ��ݼ�����
map <M-1> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 10) <CR>
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>
map <M-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>
map _+ <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize", 1) <CR>
map _- <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize", 0) <CR>

"************************************************
" SuperTab���� �Զ���ȫ������
" �ο���http://mounui.com/217.html
"************************************************
" ��ȫģʽ
"let g:SuperTabRetainCompletionType = 2
" ��ȫ��ʽ
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

"autocomplpop���,һ����ĸ���ɲ�ȫ 
let g:acp_behaviorKeywordLength = 1
let g:acp_mappingDriven = 1

"color  
hi Pmenu guibg=#444444  
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff 
au FileType php setlocal dict+=$VIM/vimfiles/bundle/AutoComplPop/dict/php_funclist.txt  

"************************************************
" DoxygenToolkit���� ע�Ͳ��
" �ο���http://mounui.com/202.html
"************************************************
" Lincese
let g:DoxygenToolkit_licenseTag = "\<enter>Copyright (C) 2018 http://mounui.com\<enter>If you have any questions, please contact me email:maojunhui5214@163.com\<enter>You can also leave a message on my blog."
" ע�Ϳ���β
let g:DoxygenToolkit_blockHeader="************************Header*************************"
let g:DoxygenToolkit_blockFooter="************************Footer*************************"
" Author
let g:DoxygenToolkit_authorName="mounui <maojunhui5214@163.com>"
" Fun
let g:DoxygenToolkit_briefTag_funcName="yes"    " ��ʾ������
let g:doxygen_enhanced_color=1
