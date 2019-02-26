set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sleuth'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
" Plugin 'autoload_cscope.vim'
" Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-abolish'
Plugin 'qpkorr/vim-bufkill'
"Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-sensible'

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

" vim-colors-solarized
syntax on
set background=dark
" Silent in case it's not set up yet
silent! colorscheme solarized

set nu
set mouse=a
highlight LineNr ctermfg=grey
set cursorline

" vim-airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
" set laststatus=2
let g:airline_theme='solarized'

" set cscopetag " For Ubuntu only - use cscope tags
set incsearch ignorecase smartcase hlsearch

map <F10> :BD<Return>   " Requires qpkorr/vim-bufkill
map <F11> :bp<Return>
map <F12> :bn<Return>

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_char = '|'

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" Cscope autoload
"function! LoadCscope()
"  let db = findfile("cscope.out", ".;")
"  if (!empty(db))
"    let path = strpart(db, 0, match(db, "/cscope.out$"))
"    set nocscopeverbose " suppress 'duplicate connection' error
"    exe "cs add " . db . " " . path
"    set cscopeverbose
"  endif
"endfunction
"au BufEnter /* call LoadCscope()                                     

