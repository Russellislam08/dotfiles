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

" highlight search
set hlsearch

" make vsplit split on the right
set splitright

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
map <Leader>b :Buffer <CR>
map <Leader>d :NERDTree <CR>
map <Leader>n :nohlsearch <CR>

map <Leader>te :tabedit

map <Leader>g :Git
map <Leader>gs :Git status <CR>
map <Leader>gd :Git diff <CR>
map <Leader>te :tabedit

"python
map <Leader>p :!python3 %:t <CR>

"tabm
map <Leader>+1 :tabm +1 <CR>
map <Leader>-1 :tabm -1 <CR>

" to navigate tabs easier
map W gT
map E gt

" commands
command Vrc vsplit ~/.vimrc

" fzf
let g:fzf_layout = { 'down': '~40%' }
left g:fzf_history_dir = 1

" nerd commenter
let NERDSpaceDelims=1
