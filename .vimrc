" O HAI
" .vimrc
" @imkmf
" You might not have this
" if you aren't using Homebrew
set shell=/bin/bash

" Plugins {{{
filetype plugin on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"" Vim config
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'endwise.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'imkmf/ctrlp-branches'
" Plugin 'sgur/ctrlp-extensions.vim'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'croaky/vim-colors-github'
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'
Plugin 'twerth/ir_black'
"" Shell/non-Vim interfacing
Plugin 'airblade/vim-gitgutter'
Plugin 'amiel/vim-tmux-navigator'
Plugin 'rking/ag.vim'
"" Language specific
Plugin 'fatih/vim-go'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-repeat'
Plugin 'osyo-manga/vim-over'
" All of your Plugins must be added before the following line
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
se t_Co=16
let g:solarized_termcolors=128
"auto align
set ai
colorscheme solarized
set background=dark
set cursorline
syntax on
set backspace=indent,eol,start
set enc=utf8
"mark key words
set hls
"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
     return "\<C-N>"
   else
     return "\<Tab>"
   endif
 endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

:set dictionary="/usr/dict/words"
" show line number
set number
" don't determine capital letter while search
set ic
"exit visual mode without delay
set timeoutlen=1000 ttimeoutlen=0
set tabstop=4
set shiftwidth=4
"colortheme
colorscheme solarized
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
"shift select
imap <S-Up> <ESC>v<Up>
imap <S-Down> <ESC>v<Down>
imap <S-Left> <ESC>v<Left>
imap <S-Right> <ESC>v<Right>
:map <C-z> u


nmap a i
vmap <S-Up> <Up>
vmap <BS> <DELETE>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
:inoremap kj <ESC>
" CTRL-x is cut (in visual mode only)
vnoremap <C-x> "*d
" CTRL-c is copy (in visual mode only)
vnoremap <C-c> "+y
:map <F2> NERDTree
"plugins
Bundle 'scrooloose/nerdtree'
Bundle 'SingleCompile'

"Bundle 'Valloric/YouCompleteMe'

"NERD Tree Config
autocmd vimenter * if !argc() | NERDTree | endif " Autoopne if no file
nmap <F2> :NERDTreeToggle<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Auto close
