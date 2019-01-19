" Some defaults to start off with
" F2 = toggle line numbering
" F3 = toggle showing invisible characters
" F4 = previous color scheme
" F5 = next color scheme

" ===========================================================================
" Vundle Configuration start
"
"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'kien/ctrlp.vim'            " Fuzzy file search, by name
"Plugin 'FelikZ/ctrlp-py-matcher'   " Faster matcher, to make ctrlp bareable

"Plugin 'scrooloose/nerdtree'       " Tree of files
"call vundle#end()
"filetype plugin indent on    " required
" ============================================================================

" -=-= Verified =-=-
syntax on                       " Syntax highlighting
" Tabs
set tabstop=4                   " A tab is four spaces
set expandtab                   " Make a tab to spaces, num of spaces set in tabstop
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " Number of spaces to use for autoindenting
set smarttab                    " Insert tabs at the start of a line according to
set autoindent                  " Copy indent from current line when starting a new line

set number                      " Enable line numbers
set numberwidth=3               " Line number width
" Set f2 to toggle line numbers
nmap <f2> :set number! number?<cr>

set list                        " Show invisible characters
set listchars=tab:>·,trail:·    " But only show tabs and trailing whitespace
" Set f3 to toggle showing invisible characters
nmap <f3> :set list! list?<cr>

" Colors
set background=dark             " Vim will try to use colors that look good on a dark background
set t_Co=256                    " Enable 256 colors support
colorscheme desert
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set ttyfast

" Search Files
" set path+=**
" -=-= End of Verified -=-=-

"highlight NonText ctermfg=8 guifg=gray
" ctrlp imporovements
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"if executable('ag')
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif
" Didn't check these
"let g:ctrlp_by_filename = 0
"let g:ctrlp_lazy_update = 1
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:40'
" end of ctrp improvements

" Nerdtree configuration
"let g:NERDTreeNodeDelimiter = "\u00a0"
"map <silent> <C-n> :NERDTreeToggle<CR>
"map <silent> <C-k> :NERDTreeFind<CR>
" End of nerdtree configure
