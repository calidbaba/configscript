"/.vimrc
set number
syntax on
color slate
"set mouse=a
"mekk plugins
"call plug#begin()
"Plug 'preservim/nerdtree'
"call plug#end()
"map <C-n> :NERDTreeToggle<CR> 
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader =" "

"keybindings fra teddy
nnoremap <leader>w :w<CR>
set mouse=a

set expandtab ts=4 sw=4 ai
> 
imap jj <Right><Esc>
inoremap {<CR>  {<CR>}<Esc>O
autocmd FileType python map <buffer> <C-l> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-l> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <C-l> :w<CR>:!node %<CR>
autocmd FileType javascript imap <buffer> <C-l> <esc>:w<CR>:!node %<CR>
"map <F10> :!node %<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"fzf
nmap <C-f> :Files .<CR>
nmap <C-g> :Rg<CR>

"asm
autocmd BufRead,BufNewFile   *.asm setlocal ft=nasm


"highlight search
set hlsearch
nnoremap <leader>h :nohls<CR>
set autoindent

"til vimwiki
set nocompatible 
filetype plugin on
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

