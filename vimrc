"/.vimrc
"til vimwiki
set nocompatible 
filetype plugin on
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

"basic
set number
set laststatus=2
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set background=dark
"set mouse=a
let mapleader =" "
"relativ number
:set number relativenumber
:set nu rnu
"tab
"set wildmode=longest,list,full
"set wildmenu

"window movements
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>s :vsplit .<CR>
nnoremap <leader>v :split .<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" autocomplete
"function! CleverTab()
"   if strpart( getline('.'), 0, col('.')-1 ) =~ '^s*$'
"       return "\<Tab>"
"   else
"       return "\<C-N>"
"endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>

"keybindings fra teddy
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q <C-w>o
set expandtab ts=4 sw=4

"tmux + vim
map <Leader>c :VimuxPromptCommand<CR> 
map <Leader>e :VimuxRunLastCommand<CR>
"map <M-h> <C-w>h
"map <M-j> <C-w>j
"map <M-k> <C-w>k
"map <M-l> <C-w>l

"map <A-t> :Ligma<CR>
"kjøre filer
imap jj <Right><Esc>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <F9> :w<CR>:!node %<CR>
autocmd FileType javascript imap <buffer> <F9> <esc>:w<CR>:!node %<CR>
autocmd FileType sh map <buffer> <F9> :w<CR>:!/bin/bash %<CR>
autocmd FileType sh imap <buffer> <F9> <esc>:w<CR>:!/bin/bash %<CR>
autocmd FileType c map <buffer> <F9> :w<CR>:!gcc % -o %:r<CR>./%<CR>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:!gcc % -o %:r<CR>./%<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"fzf
nmap <C-f> :vsplit<CR>:Files<CR>
nmap <C-g> :vsplit<CR>:Rg<CR>
nmap <leader>f :Files<CR>
nmap <leader>g :Rg<CR>
nmap <leader>F :Files ~<CR>
"nmap <leader>G :vsplit<CR>:Rg ~<CR>
"asm
"autocmd BufRead,BufNewFile   *.asm setlocal ft=nasm

"highlight search
set hlsearch
nnoremap <leader>h :nohls<CR>
set autoindent

"kok
inoremap (( ()<Esc>i
inoremap {{ {}<Esc>i
inoremap {{<CR> {<CR>}<Esc>O
inoremap [[ []<Esc>i
inoremap << <><Esc>i
inoremap '' ''<Esc>i
inoremap "" ""<Esc>i
