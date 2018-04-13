set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"�ر�vi����ģʽ
set nocp
"���ļ����ͼ��
filetype off
"����ʹ�ò��
filetype plugin on
filetype plugin indent on
"�Զ���ȫ
"inoremap ( ()<ESC>i
"inoremap " ""<ESC>i
"imap ' ''<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i
imap < <><ESC>i
imap {<CR> {<CR>}<ESC>O
"�������Ƿ���ʾԮ���ڸɴ��ͯ��ʾ
set shortmess=atI
"���ô���λ��
"winpos 5 5
"���ô��ڴ�С
"set lines=40 columns=155
"��������
set guifont=Consolas:h14:cANSI
"���벹ȫ
set completeopt=preview,menu
"���ع�����
"set guioptions-=T
"���ز˵���
"set guioptions-=m
"������ɫ����
colorscheme molokai
"�Ӳ�����
set nobackup
"��ֹ������ʱ�ļ�
"set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim��windows�µı�������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set fencs=utf-8,gbk,chinese,big5,cp936,gb18030,gb2312,utf-16
"set termencoding=utf-8
if has("win32")
	set enc=chinese
else
	set enc=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��������
set langmenu=zh_CN.UTF-8
set helplang=cn
"��ʾ�к�
set nu
"�Զ�����
set autoindent
set cindent
"ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4
"tab���Ŀ��
set tabstop=4
"�ո�����Ʊ��
set noexpandtab
set smarttab
"�Զ���ȫ����ʱ��ʹ�ò˵�ʽƥ���б�
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
" Vundle���� ���������
" ���òο���http://mounui.com/179.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nocompatible              " ȥ��VIһ����,����
" filetype off                  " ����
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

" ����б�
Plugin 'VundleVim/Vundle.vim'     " Vundle���������
Plugin 'altercation/vim-colors-solarized' " ��ɫ����
Plugin 'molokai'		              " ��ɫ����
Plugin 'DoxygenToolkit.vim'		    " ע���ĵ�����

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit����
" �ο���http://mounui.com/202.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
