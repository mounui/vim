""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM����
" Author: mounui
" Email: maojunhui5214@163.com
" Blog: http://mounui.com
" Version: 2.0
" Last Modify: 2018-05-20 23:12
" Sections:
"       -- Load Configuration ��������
"       -- Encode Settings ��������
"       -- General Settings ��������
"       -- View Settings ��ʾ����
"       -- Others Settings ��������
"       -- HotKey Settings �Զ����ݼ�
"       -- Vundle���� �������
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
let g:mapleader=" "
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
" ��Բ�ͬ�ļ����Ͳ��ò�ͬ��������ʽ
"filetype indent on
" ����ʹ�ò��
"filetype plugin on
" �����ļ����ͼ�⣬���ò��������
filetype plugin indent on
" ������ļ�����
"filetype off
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
" ������nu�ļ�
set noundofile
" �˳�vim��������ʾ���ն���Ļ�������ڲ鿴�͸���
"set t_ti= t_te=
" ���������
set mouse-=a
" �������
"set mouse=a
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
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" ��ʾ�к�
set number
" ȡ������
set nowrap
" ÿ������ַ�������������
"set textwidth=80

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

" ����к�
set relativenumber
" vim��ȡ����ʱ������кţ�ʧȥ����ʱ�þ����к�
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber
" ����ģʽ���þ����кţ���ͨģʽ��������к�
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
" ��ͨģʽ�¾��ԡ�����к��л�ӳ��
nnoremap <C-N> :call NumberToggle()<CR>
fun! NumberToggle()
	if (&relativenumber == 1)
	    set norelativenumber number
	else
	    set relativenumber
	endif
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Others Settings ��������
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
"set clipboard=unnamed

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
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" �Զ���ȫѡ��ѡ����ӳ��
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" ����ճ��ӳ�䣨����绥ͨ�� �ο���http://mounui.com/236.html
vnoremap <C-C> "*y
nnoremap <C-V> "*p

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HotKey Settings �Զ����ݼ�����
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �رշ����
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" ͬ����������ת
nnoremap k gk
nnoremap j gj

" kj�滻<Esc>
inoremap kj <Esc>
" ���ٽ���������
nnoremap ; :

" ȥ����������
map <silent> <leader>/ :noh<CR>

" <F1> �˳�
nnoremap <F1> <Esc>
" <F2> �кſ���
nnoremap <F2> :call HideNumber()<CR>
fun! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
" <F3> �ɴ�ӡ�ַ��л�
nnoremap <F3> :set list! list?<CR>
" <F4> �����л�
nnoremap <F4> :set wrap! wrap?<CR>
" <F5> ճ��ģʽ����
"set pastetoggle=<F5>
nnoremap <F5> :set paste! paste?<CR>
" <F6> �﷨���أ��ر��﷨���Լӿ���ļ���չʾ
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" ���������ƶ�
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" ������ģʽ��ǿ��ctrl-a�����ף�-e����β
cnoremap <c-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" ��������ģʽʼ������Ļ�м�
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" ��ǩҳtab�л�
map <leader>tj :tabnext<CR>
map <leader>tk :tabprev<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprev<CR>
map <leader>th :tabfirst<CR>
map <leader>tl :tablast<CR>
map <leader>te :tabedit<CR>
map <leader>td :tabclose<CR>
map <leader>tm :tabm<CR>
" ����ģʽ���л���ȷ�е�tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>
" tab�л�
let g:last_active_tab = 1   " ��ǰ��ǩҳ���
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<CR>
au TabLeave * let g:last_active_tab = tabpagenr()

" ȫѡ
map <leader>sa ggVG

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType Settings �ļ���������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au filetype python set tabstop=4 shiftwidth=4 expandtab ai
au filetype ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
au BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
au BufRead,BufNewFile *.part set filetype=html
au BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
au BufWinEnter *.php set mps-=<:>

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
Plugin 'colorizer'                      " css��ɫ��ʾ���
Plugin 'mattn/emmet-vim'                " ǰ�˴��벹ȫ
Plugin 'DoxygenToolkit.vim'		        " ע���ĵ�����
Plugin 'VimTweak'					    " ����͸�����
Plugin 'ervandew/supertab'              " ��ȫ������
Plugin 'AutoComplPop'                   " �Զ�������ʾ
Plugin 'w0rp/ale'                       " ������
Plugin 'junegunn/fzf', { 'dir': '$VIM/vimfiles/bundle/fzf', 'do': './install --all' }                   " ��������
Plugin 'junegunn/fzf.vim'               " ��������

call vundle#end()

" ��Ҫ�����ĵ�
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"************************************************
" colorizer���� css��ʾ��ɫ���
" �ο���http://mounui.com/208.html
"************************************************
" ��ʾ���ã�Ĭ��ֵΪ2��0��1 ��ǰ��ɫ��-1 ��ɫ��ʾ
let g:colorizer_fgcontrast = 0
" ����ʱ��������ɫ
let g:colorizer_startup = 0

"************************************************
" emmet���� ǰ�˲�ȫ����
" �ο���http://mounui.com/291.html
"************************************************
" ֻ��html��css�ļ���������
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstal
" �޸�Emmet��չ��
let g:user_emmet_expandabbr_key = '<C-e>'
" �޸�EmmetĬ�Ͽ�ݼ�
"let g:user_emmet_leader_key = '<C-e>'

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
let g:SuperTabRetainCompletionType = 2
" ��ȫ��ʽ
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

"************************************************
" AutoComplPop���� �Զ�������ʾ���
" �ο���http://mounui.com/225.html
"************************************************
" ����һ����ĸ���ɲ�ȫ
"let g:acp_behaviorKeywordLength = 1
" �Զ��������ɼ�ӳ�䣬����ͨ���ƶ��������Զ������Ǻ�����
let g:AutoComplPop_MappingDriven = 1
" �޸�GUI�������� ������ȫ����Ч
hi Pmenu guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

" ����PHP�����ֵ䣬����PHP�����Զ���ȫ��ע���ļ�λ��
au FileType php setlocal dict+=$VIM/vimfiles/bundle/AutoComplPop/dict/php_funclist.txt
" PHP��ʾ����
if !exists('g:AutoComplPop_Behavior')
	let g:AutoComplPop_Behavior = {}
	let g:AutoComplPop_Behavior['php'] = []
	call add(g:AutoComplPop_Behavior['php'], {
		\ 'command' : "\<C-x>\<C-o>",
		\ 'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
		\ 'repeat' : 0,
		\ })
endif

"************************************************
" ale���� �﷨�����
"************************************************
" ���ֲ�����ɼ�
let g:ale_sign_column_always = 1
" ����ͻ����ʾ
let g:ale_set_highlights = 0
" �Զ���error��warning��ʶ��
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" ��vim�Դ���״̬��������ale
"let g:ale_statusline_format = ['X %d', '! %d', 'O ok']
" ��ʾLinter����,����򾯸�������Ϣ
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" ֻ�����ļ�����ʱ���
"let g:ale_fix_on_save = 1
" ����ʱ�����
"let g:ale_lint_on_text_changed = 'never'
" ����ʱ�����
"let g:ale_lint_on_entere = 0

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

"************************************************
" fzf���� ��������
" �ο���https://mounui.com
"************************************************
" If installed using Homebrew
"set rtp+=$VIM/vimfiles/bundle/fzf/
" If installed using git
set rtp+=$VIM/vimfiles/bundle/fzf.vim/
"nnoremap <silent> <Leader>f :Files<CR>
"nnoremap <silent> <Leader>b :Buffers<CR>
if has('nvim') || has('gui_running')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

" Hide statusline of terminal buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" nnoremap <silent> <Leader><Leader> :Files<CR>
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>l        :Lines<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>
" nnoremap <silent> q: :History:<CR>
" nnoremap <silent> q/ :History/<CR>

inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
inoremap <expr> <c-x><c-d> fzf#vim#complete#path('blsd')
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

function! s:plug_help_sink(line)
  let dir = g:plugs[a:line].dir
  for pat in ['doc/*.txt', 'README.md']
    let match = get(split(globpath(dir, pat), "\n"), 0, '')
    if len(match)
      execute 'tabedit' match
      return
    endif
  endfor
  tabnew
  execute 'Explore' dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
  \ 'source': sort(keys(g:plugs)),
  \ 'sink':   function('s:plug_help_sink')}))
