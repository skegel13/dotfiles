" *************
" *** THEME ***
" *************

if (has("termguicolors"))
 set termguicolors
endif

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

syntax on

" set bg=light	 
set bg=dark	 

let g:gruvbox_contrast_light = "hard"
let g:gruvbox_contrast_dark = "soft"

let g:palenight_terminal_italics=1

let g:spacegray_use_italics = 1

" colorscheme dracula
colorscheme gruvbox
" colorscheme nord
" colorscheme OceanicNext
" colorscheme papercolor
" colorscheme spacegray
" colorscheme tender
" colorscheme palenight
" colorscheme seoul256
" colorscheme seoul256_light
