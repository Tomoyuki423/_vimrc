" Setting some decent VIM settings for programming
" This source file comes from git-for-windows build-extra repository (git-extra/vimrc)
if &compatible
set nocompatible
endif


"autocmd�p autocmd�̂��ׂĂ�autocmd vimrc�Ƃ��邱��
augroup vimrc
  autocmd!
augroup END
" ��ʕ\���̐ݒ�
set cursorcolumn
set cursorline
set number			" Display the line number
ru! defaults.vim                " Use Enhanced Vim defaults
set mouse=a                      " Reset the mouse setting from defaults
set cmdheight=2    " ���b�Z�[�W�\������2�s�m��
set helpheight=999 " �w���v����ʂ����ς��ɊJ��
"set list           " �s��������\��
" �s�������̕\���L���w��
"set listchars=tab:?\ ,eol:?,extends:?,precedes:?

" �J�[�\���ړ��֘A�̐ݒ�

set backspace=indent,eol,start " Backspace�L�[�̉e���͈͂ɐ�����݂��Ȃ�
set whichwrap=b,s,h,l,<,>,[,]  " �s���s���̍��E�ړ��ōs���܂���
set scrolloff=8                " �㉺8�s�̎��E���m��
set sidescrolloff=16           " ���E�X�N���[�����̎��E���m��
set sidescroll=1               " ���E�X�N���[���͈ꕶ���Âs��

" �t�@�C�������֘A�̐ݒ�
set confirm    " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�ɕۑ��m�F
set hidden     " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J�����Ƃ��o����
set autoread   "�O���Ńt�@�C���ɕύX�����ꂽ�ꍇ�͓ǂ݂Ȃ���
set nobackup   " �t�@�C���ۑ����Ƀo�b�N�A�b�v�t�@�C�������Ȃ�
set noswapfile " �t�@�C���ҏW���ɃX���b�v�t�@�C�������Ȃ�

" ����/�u���̐ݒ�
set hlsearch   " ������������n�C���C�g����
set incsearch  " �C���N�������^���T�[�`���s��
set ignorecase " �啶���Ə���������ʂ��Ȃ�
set smartcase  " �啶���Ə����������݂������t�Ō������s�����ꍇ�Ɍ���A�啶���Ə���������ʂ���
set wrapscan   " �Ō���܂Ō������I�����玟�̌����Ő擪�Ɉڂ�
set gdefault   " �u���̎� g �I�v�V�������f�t�H���g�ŗL���ɂ���

" �^�u/�C���f���g�̐ݒ�

set expandtab     " �^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=2     " ��ʏ�Ń^�u��������߂镝
set shiftwidth=2  " �����C���f���g�ł���镝
set softtabstop=2 " �A�������󔒂ɑ΂��ă^�u�L�[��o�b�N�X�y�[�X�L�[�ŃJ�[�\����������
set autoindent    " ���s���ɑO�̍s�̃C���f���g���p������
set smartindent   " ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����

" ������Ƃ̓����֘A�̐ݒ�

" OS�̃N���b�v�{�[�h�����W�X�^�w�薳���� Yank, Put �o����悤�ɂ���
set clipboard=unnamed,unnamedplus
" �}�E�X�̓��͂��󂯕t����
set mouse=a
" Windows �ł��p�X�̋�؂蕶���� / �ɂ���
set shellslash
" �C���T�[�g���[�h���甲����Ǝ����I��IME���I�t�ɂ���
"set iminsert=2

" �R�}���h���C���̐ݒ�

" �R�}���h���C�����[�h��TAB�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set wildmenu wildmode=list:longest,full
" �R�}���h���C���̗�����10000���ۑ�����
set history=10000

" �r�[�v�̐ݒ�

"�r�[�v�����ׂĂ𖳌��ɂ���
set visualbell t_vb=
set noerrorbells "�G���[���b�Z�[�W�̕\�����Ƀr�[�v��炳�Ȃ�
set pythonthreedll=$VIM\vimfiles\python3\python38.dll
set luadll=$VIM\vimfiles\lua\lua53.dll
"���p�����̐ݒ�
set guifont=Myrica_MM:h12
"�S�p�����̐ݒ�
set guifontwide=Myrica_MM:h12
set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set showmode                    " show the current mode
set wildmode=list:longest,longest:full   " Better command line completion

" Show EOL type and last modified timestamp, right after the filename
" Set the statusline
set statusline=%f               " filename relative to current $PWD
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
set statusline+=%=              " Rest: right align
set statusline+=%l,%c%V         " Position in buffer: linenumber, column, virtual column
set statusline+=\ %P            " Position in buffer: Percentage
setlocal path+=C:/MinGW/lib/gcc/mingw32/8.1.0/include/c++,E:\software\dlib\dlib,E:\software\Eigen\Eigen
" �W�����C�u�����ւ̃p�X��ݒ�
let $CPP_STDLIB = "C:/MinGW/lib/gcc/mingw32/8.1.0/include/c++"
augroup vimrc-set_filetype_cpp
    autocmd!
    " $CPP_STDLIB �������̊K�w�̃t�@�C�����J�����
    " filetype ���ݒ肳��Ă��Ȃ��ꍇ�� filetype=cpp ��ݒ肷��
    autocmd BufReadPost $CPP_STDLIB/* if empty(&filetype) | set filetype=cpp | endif
augroup END

"�L�[�}�b�s���O"
" ���ʂȂǂ̎����⊮
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
" ESC���񉟂����ƂŃn�C���C�g������
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" ���̓��[�h���ɑf����jj�Ɠ��͂����ꍇ��ESC�Ƃ݂Ȃ�
inoremap jj <Esc>
" ������ɃW�����v�����ۂɌ����P�����ʒ����Ɏ����Ă���
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" Shift + ���ŃE�B���h�E�T�C�Y��ύX
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
aug vimStartup | au! | aug END  " Revert last positioned jump, as it is defined below
let g:skip_defaults_vim = 1     " Do not source defaults.vim again (after loading this system vimrc)

" �⊮�\������Enter�ŉ��s�����Ȃ�
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
"""""""""""""""""""""""""""
"""Add setting by myself"""
"""""""""""""""""""""""""""
if has('vim_starting')
  set runtimepath+=$VIM/vimfiles/bundle/repos/github.com/Shougo/dein.vim
endif

" Let dein manage dein
if dein#load_state('$VIM/vimfiles/bundle')
  call dein#begin('$VIM/vimfiles/bundle')
  call dein#add('$VIM/vimfiles/bundle/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
            \ 'build' : {
            \ 'windows' : 'tools\\update-dll-mingw',
            \ 'cygwin' : 'make -f make_cygwin.mak',
            \ 'mac' : 'make -f make_mac.mak',
            \ 'unix' : 'make -f make_unix.mak',
            \ },
            \ })
"vimfiler�̓��� 
":vimFilter�Ńf�C���N�g�����ړ����Ȃ���t�@�C�����݂�܂� ��^�C�v
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
" �e��X�j�y�b�g�t�@�C��
call dein#add('honza/vim-snippets')
call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/unite-outline')
call dein#add('justmao945/vim-clang')
" solarized
call dein#add('altercation/vim-colors-solarized')
" " mustang
"call dein#add ('croaker/mustang-vim')
" " jellybeans
" call dein#add('nanotech/jellybeans.vim')
" " molokai
call dein#add('tomasr/molokai')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('t9md/vim-quickhl')
  " �C���f���g�����o��
call dein#add('itchyny/thumbnail.vim')
" Syntax checking
if has('job') && has('channel') && has('timers')
  call dein#add('w0rp/ale')
else
  call dein#add('vim-syntastic/syntastic')
endif
" �^�O�W�����v�ɕK�v��tag�t�@�C�����Ă̂������������Ă����ǂ��z
call dein#add( 'soramugi/auto-ctags.vim')
  " �i�荞�݌��������Ă���闊�������
call dein#add( 'fuenor/qfixgrep')
  " Vim�̒��ŃX�N���v�g�����s�����
call dein#add( 'thinca/vim-quickrun', {
    \ 'autoload' : {
      \ 'mappings' : [['n', '\r']],
      \ 'commands' : ['QuickRun']
    \ }
  \ })
  " QuickRun�̏o�͌��ʂ�f���o���ꏊ
  call dein#add( "osyo-manga/unite-quickfix")
  " QuickRun���s���ɁC�ق�ƂɎ��s���Ă�́H���ĂȂ�Ȃ��悤�ɂ���A�j���[�V����
   call dein#end()
  call dein#save_state()
endif
""filetype plugin on
filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif
"------------------------------------------------------------------------------
" �R�����g�A�E�g��؂�ւ���}�b�s���O
" \c �ŃJ�[�\���s���R�����g�A�E�g
" �ēx \c �ŃR�����g�A�E�g������
" �I�����Ă��畡���s�� \c ���\
nmap \c <Plug>(caw:I:toggle)
vmap \c <Plug>(caw:I:toggle)

" \C �ŃR�����g�A�E�g�̉���
nmap \C <Plug>(caw:I:uncomment)
vmap \C <Plug>(caw:I:uncomment)
" <Space>m �ŃJ�[�\�����̒P��A�������͑I�������͈͂̃n�C���C�g���s��
" �ēx <Space>m ���s���ƃJ�[�\�����̃n�C���C�g����������
" ����͕����̒P��̃n�C���C�g���s�������ł���
" <Space>M �őS�Ẵn�C���C�g����������
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)
"=========
"vim-clang
"=========
" 'Shougo/neocomplete.vim' {{{
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"""}}}


" 'justmao945/vim-clang' {{{

" disable auto completion for vim-clanG
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

" default 'longest' can not work with neocomplete
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

let g:clang_exec = 'clang'
let g:clang_format_exec = 'clang-format'

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '
  \ -std=c++1z 
  \ -stdlib=libc++ 
  \ -pedantic-errors
  \ '

" }}}
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" �X�j�y�b�g��W�J����L�[�}�b�s���O
" <Tab> �őI������Ă���X�j�y�b�g�̓W�J���s��
" �I������Ă����₪�X�j�y�b�g�ł���ΓW�J���A
" ����ȊO�ł���Ύ��̌���I������
" �܂��A���ɃX�j�y�b�g���W�J����Ă���ꍇ�͎��̃}�[�N�ւƈړ�����
imap <expr><Tab> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"


" ���݂� filetype �̃X�j�y�b�g��ҏW����ׂ̃L�[�}�b�s���O
" �������Ă������ƂŃT�b�ƕҏW��ǉ��Ȃǂ��s�����Ƃ��ł���
" �ȉ��̐ݒ�ł͐V�����^�u�ŃX�j�y�b�g�t�@�C�����J��
nnoremap <Space>ns :execute "tabnew\|:NeoSnippetEdit ".&filetype<CR>



" �X�j�y�b�g�t�@�C���̕ۑ��f�B���N�g����ݒ�
let g:neosnippet#snippets_directory ="$VIM\vimfiles\bunle/neosnippet"
"�t�@�C���ۑ����Ɏ����I�Ƀt�H�[�}�b�g�����낦��"
function! CPPCodeCleanup()
  " echo "Cleanup cpp code"
  let l:lines="all"
  let g:clang_format_fallback_style = 'Google'
  :pyf E:\software\LLVM\share\clang/clang-format.py
endfunction
command! CPPCodeCleanup call CPPCodeCleanup()

autocmd BufWrite *.{cpp} :CPPCodeCleanup
autocmd BufWrite *.{hpp} :CPPCodeCleanup
autocmd BufWrite *.{c} :CPPCodeCleanup
autocmd BufWrite *.{h} :CPPCodeCleanup

colorscheme molokai

" �N�����̃E�B���h�E����VimFiler�������N��
augroup start_vimfiler
  autocmd!
  autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | VimFiler | endif
augroup END

hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
filetype on
