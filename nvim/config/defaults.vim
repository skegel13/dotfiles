set rtp+=/usr/local/opt/fzf

" INDENTATION
set smartindent                                                                 "Automatic indentation. See :help smartindent
set copyindent
set autoindent                                                                  "Preserve current indent on new lines
set softtabstop=4                                                               "Number of spaces a tab counts as with si
set tabstop=4                                                                   "Indentation levels every four columns
set shiftwidth=4                                                                "Indent/outdent by four columns
set shiftround                                                                  "Indent/outdent to nearest tabstop
set expandtab                                                                   "Convert all tabs typed to spaces
filetype plugin indent on                                                       "Enable file-type based indentation

" SENSIBLE
set backspace=indent,eol,start                                                  "Make backspaces delete sensibly
set smarttab

" BRACKETS
set matchpairs+=<:>                                                             "Jump between pairs (%) command
set showmatch                                                                   "Briefly jump to matching bracket, one screen

" LINE NUMBERS
set number                                                                      "Show line numbers
set relativenumber

" COLUMNS
set ruler                                                                       "Show line and column number of cursor pos
set colorcolumn=80,120

" COMMAND MENU
set wildmenu                                                                    "Visual autocomplete for command menu

" FILES
set autowriteall                                                                "Write files when switching buffers
set autoread                                                                    "Re-read a file when it has been
set ffs=unix,mac,dos                                                            "Set standard file type

" AUTOCOMPLETE
set complete=.,w,b,u                                                            "Set the auto-complete buffer options

" BELLS
set noerrorbells                                                                "Disable error bells
set novisualbell                                                                "Disable visual bells

" SPLITS
set splitbelow
set splitright

" SEARCH
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildignorecase

" SWAPS
set noswapfile
set nobackup

" SIGN COLUMN
set signcolumn=auto                                                             "Show signs next to line number

" INTERFACE
set cursorline                                                                  "Display the cursor line
set t_vb=
set scrolljump=5                                                                "Scroll 5 lines at screen edges
set nowrap                                                                      "Don't wrap long lines

let mapleader = ','

set hidden                                                                      "Allow buffers to hide when changed
" set noshowmode
set mouse+=a
