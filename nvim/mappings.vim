" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------

" Mappings: sourcery
function! SourceryMappings()
  nmap <buffer> gp <Plug>SourceryGoToRelatedPluginDefinition
  nmap <buffer> gm <Plug>SourceryGoToRelatedMappings
  nmap <buffer> gc <Plug>SourceryGoToRelatedConfig
endfunction

" Map Leader
let mapleader = ","

" Exit insert mode
inoremap jk <esc>
inoremap kj <esc>

"Shortcut to edit vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>

" Simplify mappings for switching between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Shortcut to edit vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>

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

" Mappings: telescope
nnoremap <leader>f <Cmd>Telescope git_files<CR>
nnoremap <leader>p <Cmd>Telescope git_files<CR>
nnoremap <c-p> <Cmd>Telescope git_files<CR>
nnoremap <leader>F <Cmd>Telescope find_files<CR>
nnoremap <leader>b <Cmd>Telescope buffers sort_lastused=true<CR>
nnoremap <c-e> <Cmd>Telescope buffers sort_lastused=true<CR>
nnoremap <leader>ls <Cmd>Telescope buffers sort_lastused=true<CR>
nnoremap <leader>gs <Cmd>Telescope git_status<CR>
" nnoremap <leader>h <Cmd>Telescope project_history<CR>
" nnoremap <leader>H <Cmd>Telescope oldfiles<CR>
nnoremap <leader>/ <Cmd>Telescope live_grep<CR>
nnoremap <leader>l <Cmd>Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>C <Cmd>Telescope commands<CR>
nnoremap <leader>: <Cmd>Telescope command_history<CR>
nnoremap <leader><leader>p <Cmd>Telescope commands<CR>
nnoremap <leader><leader>k <Cmd>Telescope keymaps<CR>
nnoremap <leader><leader>v <Cmd>Telescope sourcery<CR>
nnoremap <leader><leader>d <Cmd>Telescope dotfiles<CR>
nnoremap <leader><leader>h <Cmd>Telescope help_tags<CR>
nnoremap <leader><leader>f <Cmd>Telescope filetypes<CR>
nnoremap <leader><leader>t <Cmd>Telescope<CR>

" Mappings: coc
nnoremap <leader>P <Cmd>Telescope coc<CR>
nnoremap <leader>o <Cmd>Telescope coc document_symbols<CR>
nnoremap <leader>O <Cmd>Telescope coc workspace_symbols<CR>
nmap <silent> gd <Cmd>Telescope coc definitions<CR>
nmap <silent> gy <Cmd>Telescope coc type-defintion<CR>
nmap <silent> gi <Cmd>Telescope coc implementation<CR>
nmap <silent> gr <Cmd>Telescope coc references_used<CR>
nnoremap <silent><nowait> <space>a <Cmd>Telescope coc diagnostics<cr>
nnoremap <silent><nowait> <space>c <Cmd>Telescope coc commands<cr>
nnoremap <silent><nowait> <space>s <Cmd>Telescope coc workspace_symbols<cr>

" Mappings: test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" Mappings: fzf
nnoremap <leader>sg :Rg<CR>

" Mappings: tree.lua
nnoremap <leader>e :NvimTreeFindFileToggle<CR>
