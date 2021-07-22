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

let g:dracula_bold = 1
let g:dracula_italic = 1

let g:gruvbox_contrast_light = "hard"
let g:gruvbox_contrast_dark = "soft"

let g:palenight_terminal_italics=1

let g:spacegray_use_italics = 1

let g:sonokai_style = "atlantis" "options: default, atlantis, andromeda, shusia, maia, espresso
let g:sonokai_enable_italic = 1

" colorscheme ayu
colorscheme dracula
" colorscheme gruvbox
" colorscheme nord
" colorscheme palenight
" colorscheme PaperColor
" colorscheme spacegray
" colorscheme tender
" colorscheme sonokai

let g:lightline = {
		\ 'colorscheme': colors_name,
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
