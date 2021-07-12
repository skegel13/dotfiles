" *************
" *** THEME ***
" *************

if (has("termguicolors"))
 set termguicolors
 set t_Co=256
endif

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" set bg=light	 
set bg=dark	 

let g:ayucolor="mirage" "options: dark, mirage
let g:ayu_italic_comment = 1

let g:gruvbox_contrast_light = "hard"
let g:gruvbox_contrast_dark = "soft"

let g:palenight_terminal_italics=1

let g:spacegray_use_italics = 1

let g:sonokai_style = "andromeda" "options: default, atlantis, andromeda, shusia, maia, espresso
let g:sonokai_enable_italic = 1

" colorscheme ayu
" colorscheme dracula
" colorscheme gruvbox
" colorscheme nord
" colorscheme OceanicNext
" colorscheme palenight
" colorscheme papercolor
" colorscheme spacegray
" colorscheme tender
" colorscheme seoul256
" colorscheme seoul256_light
colorscheme sonokai

let g:lightline = {
		\ 'colorscheme': 'sonokai',
		\ 'active': {
		\   'left': [ [ 'mode', 'paste' ],
		\     ['gitbranch', 'readonly', 'filename', 'modified', ] ],
		\   'right': [ [ 'lineinfo' ],
		\     ['filetype' ] ]
		\ },
		\ 'component_function': {
		\   'gitbranch': 'FugitiveHead',
		\ },
	  \ }
