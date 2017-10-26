set nocompatible
"syntax on

"set number
"set ruler
set backspace=indent,eol,start
"fixdel
set rtp+=~/.vim/Plugin/bundle/Vundle.vim
"call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/Plugin/')

"let Vundle manage Vundle,required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vhda/verilog_systemverilog.vim' "support for systemverilog syntax
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
filetype plugin indent on

set number "highlight the line number
set showcmd
set ruler "show the position of cursor
set cursorline "highlight the cursor line number
set autoindent "set auto indent when press enter

syntax enable "syntax enable
syntax on "enable the specially syntax
set laststatus=2 "status always on

"set autochdir
"set
"statusline=0----0----5----10----15----20----25----30----35----40----45----50----55----60----65----70----75----80----85----90----95----100
set t_co=256 "Explicity tell vim that terminal supports 256color

set tags=./tags;

"colorscheme setting
set background=dark
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1

"filetype detection and syntax highlight setting
filetype plugin on
augroup Systemverilog
    autocmd!
    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete
augroup END

"verilog and systemverilog syntax detection and highlight
autocmd BufRead,BufNewFile *.v,*.vh setfiletype verilog
autocmd BufRead,BufNewFile *.v,*.vh set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile *.sv,*.svi,*.svh setfiletype verilog_systemverilog
autocmd BufRead,BufNewFile *.sv,*.svi,*.svh set expandtab tabstop=4 softtabstop=4 shiftwidth=4

"auto commentary
autocmd FileType verilog_systemverilog setlocal commentstring=//\ %s

if has('gui_running')
    set guifont=Monospace\ 12
endif
