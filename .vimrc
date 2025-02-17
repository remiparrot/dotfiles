set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"Plugin 'tpope/vim-fugitive'
"Plugin 'lervag/vimtex'
"Plugin 'FastFold'

"Plugin 'languagetool-org/languagetool'
Plugin 'rhysd/vim-grammarous'
"Plugin 'dpelle/vim-LanguageTool'
Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
"set showbreak=+++ 	 Wrap-broken line prefix
"set textwidth=100	 Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
"set hlsearch	 Highlight all search results
set smartcase	" Enable smart-case search
"set ignorecase	 Always case-insensitive
set incsearch	" Searches for strings incrementally

"set tabstop=4	" For tab characters that appear 4-spaces-wide
"set autoindent	" Auto-indent new lines
"set shiftwidth=4	" Number of auto-indent spaces
"set smartindent	" Enable smart-indent
"set smarttab	" Enable smart-tabs
"set softtabstop=0	" Number of spaces per Tab
 
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set foldmethod=syntax
"set foldmethod=indent
"set foldmethod=expr
"set foldexpr=vimtex#fold#level(v:lnum)
"set foldtext=vimtex#fold#text()
let g:tex_fold_enabled=1
"set fillchars=fold:\ 

set whichwrap=b,s,<,>,[,]

let g:Imap_UsePlaceHolders=0

syntax on
"colorscheme peachpuff
"hi Folded ctermbg=234
"hi MatchParen ctermbg=235
"hi Visual term=reverse cterm=reverse ctermbg=232

au BufNewFile,BufRead *.tikz set filetype=tex

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						Grammarous
let g:grammarous#languagetool_cmd='languagetool'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						LanguageTool
"let g:languagetool_jar='$HOME/.vim/bundle/vim-LanguageTool/LanguageTool-5.2/languagetool-commandline.jar'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						 vimdiff
"hi DiffAdd      ctermfg=0	gui=none    guifg=NONE          guibg=#bada9f
"hi DiffChange   ctermfg=0	gui=none    guifg=NONE          guibg=#e5d5ac
"hi DiffDelete   ctermfg=0	gui=bold    guifg=#ff8080       guibg=#ffb0b0
"hi DiffText     ctermfg=0	gui=none    guifg=NONE          guibg=#8cbee2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme PaperColor
