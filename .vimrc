set number
syntax on

filetype indent on

" Tabs and spaces
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" smart indent
set smartindent

set hlsearch

call plug#begin()

" one theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'HenryNewcomer/vim-theme-papaya'

" nerdtree
Plug 'preservim/nerdtree'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"ack
Plug 'mileszs/ack.vim'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ruby
Plug 'vim-ruby/vim-ruby'

" git?
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme onehalfdark

" mappings
map <Leader>f :Files <CR>
map <Leader>d :NERDTree <CR>
map <Leader>n :nohlsearch <CR>

map <Leader>te :tabedit

map <Leader>g :Git
map <Leader>gs :Git status <CR>
map <Leader>gd :Git diff <CR>
map <Leader>te :tabedit

"python
map <Leader>p :!python3 %:t <CR>
