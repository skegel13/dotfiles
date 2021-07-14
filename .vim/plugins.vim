" Add plugins using vim-plug
call plug#begin('~/.vim/plugged')

" Interface
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'

" Formatting/Linting
Plug 'editorconfig/editorconfig-vim'

" Project
Plug 'airblade/vim-rooter'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'APZelos/blamer.nvim'

" Syntax
Plug 'lumiliet/vim-twig'

" Utilities
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch' 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'mattn/emmet-vim'
Plug 'andymass/vim-matchup'
Plug 'raimondi/delimitmate'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-test/vim-test'

" Themes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'ajh17/spacegray.vim'
Plug 'dracula/vim'
Plug 'nlknguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/sonokai'
Plug 'Luxed/ayu-vim'

call plug#end()
