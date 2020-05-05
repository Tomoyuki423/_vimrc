" Setting some decent VIM settings for programming
" This source file comes from git-for-windows build-extra repository (git-extra/vimrc)
if &compatible
set nocompatible
endif


"autocmd用 autocmdのすべてにautocmd vimrcとすること
augroup vimrc
  autocmd!
augroup END
" 画面表示の設定
set cursorcolumn
set cursorline
set number			" Display the line number
ru! defaults.vim                " Use Enhanced Vim defaults
set mouse=a                      " Reset the mouse setting from defaults
set cmdheight=2    " メッセージ表示欄を2行確保
set helpheight=999 " ヘルプを画面いっぱいに開く
"set list           " 不可視文字を表示
" 不可視文字の表示記号指定
"set listchars=tab:?\ ,eol:?,extends:?,precedes:?

" カーソル移動関連の設定

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定
set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする

" タブ/インデントの設定

set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set shiftwidth=2  " 自動インデントでずれる幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 動作環境との統合関連の設定

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
"set iminsert=2

" コマンドラインの設定

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

" ビープの設定

"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
set pythonthreedll=$VIM\vimfiles\python3\python38.dll
set luadll=$VIM\vimfiles\lua\lua53.dll
"半角文字の設定
set guifont=Myrica_MM:h12
"全角文字の設定
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
" 標準ライブラリへのパスを設定
let $CPP_STDLIB = "C:/MinGW/lib/gcc/mingw32/8.1.0/include/c++"
augroup vimrc-set_filetype_cpp
    autocmd!
    " $CPP_STDLIB よりも下の階層のファイルが開かれて
    " filetype が設定されていない場合に filetype=cpp を設定する
    autocmd BufReadPost $CPP_STDLIB/* if empty(&filetype) | set filetype=cpp | endif
augroup END

"キーマッピング"
" 括弧などの自動補完
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
aug vimStartup | au! | aug END  " Revert last positioned jump, as it is defined below
let g:skip_defaults_vim = 1     " Do not source defaults.vim again (after loading this system vimrc)

" 補完表示時のEnterで改行をしない
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
"vimfilerの導入 
":vimFilterでデイレクトリを移動しながらファイルをみれます 上タイプ
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
" 各種スニペットファイル
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
  " インデントを視覚化
call dein#add('itchyny/thumbnail.vim')
" Syntax checking
if has('job') && has('channel') && has('timers')
  call dein#add('w0rp/ale')
else
  call dein#add('vim-syntastic/syntastic')
endif
" タグジャンプに必要なtagファイルってのを自動生成してくれる良い奴
call dein#add( 'soramugi/auto-ctags.vim')
  " 絞り込み検索をしてくれる頼れるやつだよ
call dein#add( 'fuenor/qfixgrep')
  " Vimの中でスクリプトを実行するよ
call dein#add( 'thinca/vim-quickrun', {
    \ 'autoload' : {
      \ 'mappings' : [['n', '\r']],
      \ 'commands' : ['QuickRun']
    \ }
  \ })
  " QuickRunの出力結果を吐き出す場所
  call dein#add( "osyo-manga/unite-quickfix")
  " QuickRun実行中に，ほんとに実行してるの？ってならないようにするアニメーション
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
" コメントアウトを切り替えるマッピング
" \c でカーソル行をコメントアウト
" 再度 \c でコメントアウトを解除
" 選択してから複数行の \c も可能
nmap \c <Plug>(caw:I:toggle)
vmap \c <Plug>(caw:I:toggle)

" \C でコメントアウトの解除
nmap \C <Plug>(caw:I:uncomment)
vmap \C <Plug>(caw:I:uncomment)
" <Space>m でカーソル下の単語、もしくは選択した範囲のハイライトを行う
" 再度 <Space>m を行うとカーソル下のハイライトを解除する
" これは複数の単語のハイライトを行う事もできる
" <Space>M で全てのハイライトを解除する
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

" スニペットを展開するキーマッピング
" <Tab> で選択されているスニペットの展開を行う
" 選択されている候補がスニペットであれば展開し、
" それ以外であれば次の候補を選択する
" また、既にスニペットが展開されている場合は次のマークへと移動する
imap <expr><Tab> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"


" 現在の filetype のスニペットを編集する為のキーマッピング
" こうしておくことでサッと編集や追加などを行うことができる
" 以下の設定では新しいタブでスニペットファイルを開く
nnoremap <Space>ns :execute "tabnew\|:NeoSnippetEdit ".&filetype<CR>



" スニペットファイルの保存ディレクトリを設定
let g:neosnippet#snippets_directory ="$VIM\vimfiles\bunle/neosnippet"
"ファイル保存時に自動的にフォーマットをそろえる"
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

" 起動時のウィンドウ左にVimFilerを自動起動
augroup start_vimfiler
  autocmd!
  autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | VimFiler | endif
augroup END

hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
filetype on
