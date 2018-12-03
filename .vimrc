set nocompatible "vi非互換モード


"#######################

" 表示系

"#######################

set number "行番号表示

set showmode "モード表示

set title "編集中のファイル名を表示

set ruler "ルーラーの表示

set showcmd "入力中のコマンドをステータスに表示する

set showmatch "括弧入力時の対応する括弧を表示

set laststatus=2 "ステータスラインを常に表示

set textwidth=0 "入力されているテキストの最大幅を無効にする

set nowrap "折り返ししない 

set encoding=utf-8 "エンコードをUTF-8に設定"

"#######################

" プログラミングヘルプ系

"#######################

syntax on "カラー表示

set smartindent "オートインデント

set expandtab "タブの代わりに空白文字挿入

"set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース

set tabstop=2 "画面上でタブ文字が占める幅

set shiftwidth=2 "自動インデントでずれる幅

set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅

set autoindent "改行時に前の行のインデントを継続する

" ファイルを開いた際に、前回終了時の行で起動

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" PHP関数補完
autocmd FileType php,ctp :set dictionary=~/.vim/dictionary/php.dict

" PHP保存時のシンタックスエラーチェック
autocmd FileType php set makeprg=php\ -l\ %
autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif

" JavaScript補完
autocmd FileType javascript :set dictionary=~/.vim/dictionary/javascript.dict

"" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

vmap <silent> ;h :s?^\(\s*\)+'\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>

"#######################

" 検索系

"#######################

set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する

set smartcase "検索文字列に大文字が含まれている場合は区別して検索する

set wrapscan "検索時に最後まで行ったら最初に戻る

set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない

set nohlsearch "検索結果文字列の非ハイライト表示


"#######################

" vundle

"#######################

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

filetype plugin indent on

Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/neosnippet.git'
Bundle 'mattn/emmet-vim'
Bundle 'open-browser.vim'
Bundle 'mattn/webapi-vim'
Bundle 'tell-k/vim-browsereload-mac'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'taichouchou2/html5.vim'
Bundle 'surround.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-syntax'
Bundle 'marijnh/tern_for_vim'
