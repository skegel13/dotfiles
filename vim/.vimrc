"runtime init.vim

set rtp+=/usr/local/opt/fzf

" INDENTATION
set autoindent                                                                  "Preserve current indent on new lines
set smartindent                                                                 "Automatic indentation. See :help smartindent
"set copyindent
set softtabstop=4                                                               "Number of spaces a tab counts as with si
set tabstop=4                                                                   "Indentation levels every four columns
set shiftwidth=4                                                                "Indent/outdent by four columns
set shiftround                                                                  "Indent/outdent to nearest tabstop
set expandtab                                                                   "Convert all tabs typed to spaces
filetype plugin indent on                                                       "Enable file-type based indentation

" SENSIBLE
set backspace=indent,eol,start                                                  "Make backspaces delete sensibly

" BRACKETS
set matchpairs+=<:>                                                             "Jump between pairs (%) command
set showmatch                                                                   "Briefly jump to matching bracket, one screen

" LINE NUMBERS
set number                                                                      "Show line numbers
set relativenumber

" COLUMNS
set ruler                                                                       "Show line and column number of cursor pos
set colorcolumn=120

" COMMAND MENU
set wildmenu                                                                    "Visual autocomplete for command menu

" FILES
set autowriteall                                                                "Write files when switching buffers
set autoread                                                                    "Re-read a file when it has been
"set ffs=unix,mac,dos                                                            "Set standard file type

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
"set signcolumn=auto                                                             "Show signs next to line number

" INTERFACE
set cursorline                                                                  "Display the cursor line
set t_vb=
"set scrolljump=5                                                                "Scroll 5 lines at screen edges
"set nowrap                                                                      "Don't wrap long lines

let mapleader = ','

"set hidden                                                                      "Allow buffers to hide when changed
"set noshowmode
"set mouse+=a

" MAPPINGS

" Exit insert mode
inoremap jk <esc>
inoremap kj <esc>

"Shortcut to edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Simplify mappings for switching between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Shortcut to edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Navigate lines
" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Split a line
nnoremap K i<cr><Esc>

" Select all text
nnoremap vA ggVG

" Yank to end of line
nnoremap Y y$

"Delete to the end of line
nnoremap D d$

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>
noremap <silent> <leader><cr> :nohlsearch<cr>

" Fast saving
nmap <leader>w :w!<cr>

" Quickly quit editting without save
nnoremap <leader>q :q!<cr>

" *** BUFFERS ***
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <TAB> :bnext<cr>
nnoremap <S-TAB> :bprevious<cr>

" Switch between tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" Easily create a new tab.
noremap <leader>tN :tabnew<cr>

" Easily close a tab.
noremap <leader>tc :tabclose<cr>

" Easily move a tab.
noremap <leader>tm :tabmove<cr>

" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Copy to clipboard
vnoremap <leader>c "*y
vnoremap <leader>y "*y

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <c-k> <esc>:m .-2<CR>==i
inoremap <c-j> <esc>:m .+1<CR>==i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
