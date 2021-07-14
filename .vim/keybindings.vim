" *******************
" *** KEYBINDINGS ***
" *******************

" Remap leader
let mapleader = ","

" Map jk to ESC in insert mode
inoremap jk <esc>
inoremap kj <esc>


" *** VIMRC ***

" Open vimrc
nnoremap <leader>ve :tabedit $HOME/.vim/init.vim<CR>

" Source vimrc
nnoremap <leader>vr :so $MYVIMRC<CR>


" *** NAVIGATION ****

" Navigate lines
" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Split a line
nnoremap K i<CR><Esc>

" Select all text
nnoremap vA ggVG

" Yank to end of line
nnoremap Y y$

"Delete to the end of line
nnoremap D d$

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Fast saving
nmap <leader>w :w!<cr>

" Quickly quit editting without save
nnoremap <leader>q :q!<CR>

" *** BUFFERS ***
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>


" *** TABS ***

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
noremap <leader>tN :tabnew<CR>

" Easily close a tab.
noremap <leader>tc :tabclose<CR>

" Easily move a tab.
noremap <leader>tm :tabmove<CR>

" Easily go to next tab.
" noremap <leader>tn :tabnext<CR>

" Easily go to previous tab.
" noremap <leader>tp :tabprevious<CR>

" Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>


" *** SEARCH ***

" Press <leader> Enter to remove search highlights
noremap <silent> <leader><cr> :noh<cr>

" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Copy to clipboard
vnoremap <leader>c "+y


" *** PLUGIN RELATED BINDINGS ***

nnoremap <leader>e :Lexplore<CR>

"Toggle FZF
nnoremap <leader>p :Files<CR>
nnoremap <c-p> :Files<CR>
nnoremap <leader>s :Blines<space>
nnoremap <leader>sg :Rg<space>
nnoremap <c-e> :Buffers<CR>
nnoremap <leader>ls :Buffers<CR>

" Vim Test
" nmap <silent> t<C-n> :TestNearest<CR>
" nmap <silent> t<C-f> :TestFile<CR>
" nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" CoC

" Mappings for CoCList

" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocFzfList diagnostics<cr>

" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocFzfList extensions<cr>

" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocFzfList commands<cr>

" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocFzfList outline<cr>

" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocFzfList symbols<cr>

nnoremap <space>g :CocFzfList gstatus<CR>
