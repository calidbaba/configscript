"/.config/nvim/init.vim

"source needs relativePath
function! SourceLocal(relativePath)
  let root = "~/.config/nvim"
  let fullPath = root . '/'. a:relativePath
  exec 'source ' . fullPath
endfunction
"plugins
call SourceLocal("plug.vim")
"language server
call SourceLocal("coc.vim")
"keybindings
call SourceLocal("bindings.vim")
"run command on <F9> based on filetype
call SourceLocal("run.vim")
"different functions
call SourceLocal("functions.vim")


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
