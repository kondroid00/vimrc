set showtabline = 2 "タブを常に表示

set transparency=7 " 透明度

set imdisable " IME OFF

set antialias " アンチエイリアス

set tabstop=2 " タブサイズ

set shiftwidth=2 " インデント幅

set number " 行番号表示

colorscheme desert " カラースキーマ

set columns=120 " 横幅

set lines=45 " 行数

set wrapscan " 検索をファイルの先頭へループしない

" フォント設定
 set guifontwide=ricty:h16
 set guifont=ricty:h16

" タブの表示
set list
set listchars=tab:>-,trail:-,extends:<,precedes:<

" 全角スペースを視覚化
 highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
 au BufNewFile,BufRead * match ZenkakuSpace /　/

" 新しい行のインデントを現在行と同じにする
set autoindent

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent

" タブ切り替え
nmap <Tab> gt
nmap <S-Tab> gT

" Programming
set showmatch "対応する括弧を表示

"set cindent "Cのインデント
"set foldmethod=syntax
set grepprg=internal "内蔵grep
