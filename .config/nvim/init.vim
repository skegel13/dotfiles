set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

runtime plugins.vim
runtime settings.vim
runtime theme.vim
runtime keybindings.vim
runtime coc.vim

