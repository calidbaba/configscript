"/.config/nvim/init.vim
"til vimwiki
set nocompatible 
filetype plugin on
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'tpope/vim-commentary'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

"coc
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"basic
set number
set clipboard=unnamedplus
set laststatus=2
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set background=dark
set mouse=a
let mapleader =" "
"relativ number
:set number relativenumber
:set nu rnu
"tab
"set wildmode=longest,list,full
"set wildmenu

"jump back
noremap <leader>b :e#<CR>

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
nnoremap <leader>w :wa<CR>
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
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:!gcc % -o %<  && ./%<<CR>
autocmd FileType c map <buffer> <F9> <esc>:w<CR>:!gcc % -o %<  && ./%<<CR>
autocmd FileType perl map <buffer> <F9> :w<CR>:!/usr/bin/perl %<CR>
autocmd FileType perl imap <buffer> <F9> <esc>:w<CR>:!/usr/bin/perl %<CR>
autocmd FileType typescript imap <buffer> <F9> <esc>:w<CR>:!tsc % && node %<.js<CR>
autocmd FileType typescript map <buffer> <F9> <esc>:w<CR>:!tsc % && node %<.js<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"fzf
function! GFilesFallback()
  let output = system('git rev-parse --show-toplevel') " Is there a faster way?
  let prefix = get(g:, 'fzf_command_prefix', '')
  if v:shell_error == 0
    exec "normal :" . prefix . "GFiles\<CR>"
  else
    exec "normal :" . prefix . "Files\<CR>"
  endif
  return 0
endfunction

nmap <C-f> :vsplit<CR>:Files<CR>
nmap <C-g> :vsplit<CR>:Rg<CR>
nmap <leader>f :call GFilesFallback()<CR>
nmap <leader>g :Rg<CR>
"nmap <leader>F :Files ~<CR>
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


"ta vekk de jævla røde blokkene i python
let g:python_highlight_space_errors = 0


"zooming
function! WinZoomToggle() abort
    if ! exists('w:WinZoomIsZoomed') 
        let w:WinZoomIsZoomed = 0
    endif
    if w:WinZoomIsZoomed == 0
        let w:WinZoomOldWidth = winwidth(0)
        let w:WinZoomOldHeight = winheight(0)
        wincmd _
        wincmd |
        let w:WinZoomIsZoomed = 1
    elseif w:WinZoomIsZoomed == 1
        execute "resize " . w:WinZoomOldHeight
        execute "vertical resize " . w:WinZoomOldWidth
        let w:WinZoomIsZoomed = 0
    endif
endfunction

nnoremap <leader>z :call WinZoomToggle()<CR>
