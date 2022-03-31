"/.config/nvim/init.vim

"plugins
source plug.vim
"language server
source coc.vim
"keybindings
source bindings.vim
"run command on <F9> based on filetype
source run.vim
"different functions
source function.vim


set encoding=utf-8
set number
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set background=dark
set expandtab ts=4 sw=4
set autoindent

"dont try to be compatible with vi
set nocompatible 
"yanking also copies into "normal" clipboard
set clipboard=unnamedplus
"showes status bar at the buttom
set laststatus=2
"enables mouse
set mouse=a
"relativ number
:set number relativenumber
:set nu rnu

"highlight search
set hlsearch

"remove red squares in python
let g:python_highlight_space_errors = 0
