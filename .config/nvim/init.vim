set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc


call plug#begin('~/.local/share/nvim/plugged')

Plug 'APZelos/blamer.nvim'

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

colorscheme default
