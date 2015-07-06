" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"auto align
set ai
set background=dark
set cursorline
colorscheme solarized
syntax on
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
"shift select
imap <S-Up> <ESC>v<Up>
imap <S-Down> <ESC>v<Down>
imap <S-Left> <ESC>v<Left>
imap <S-Right> <ESC>v<Right>
:map <C-z> u
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
vmap <BS> <DELETE>
:map <F2> NERDTree
"plugins
Bundle 'scrooloose/nerdtree'

"NERD Tree Config
autocmd vimenter * if !argc() | NERDTree | endif " Autoopne if no file
nmap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Auto close
