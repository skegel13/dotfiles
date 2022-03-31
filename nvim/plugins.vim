"
" Installed plugins
"

" Simplify management of vim configuration (https://github.com/jesseleite/vim-sourcery)
Plug 'jesseleite/vim-sourcery'

" nvim abstraction for tree-sitter (parser generator)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Interface
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'fannheyward/telescope-coc.nvim'

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
Plug 'sheerun/vim-polyglot'
Plug 'jwalton512/vim-blade'

" Utilities
Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'andymass/vim-matchup'
Plug 'raimondi/delimitmate'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-test/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-tree.lua'

" Themes
Plug 'dracula/vim'
Plug 'nlknguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
