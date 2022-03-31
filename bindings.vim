"/.config/nvim/bindings.vim

let mapleader =" "
imap jj <Right><Esc>

"jump back to last opened buffer
noremap <leader>b :e#<CR>

"window movements
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>s :vsplit .<CR>
nnoremap <leader>v :split .<CR>

nnoremap <leader>w :wa<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q <C-w>o

map <Leader>c :VimuxPromptCommand<CR> 
map <Leader>e :VimuxRunLastCommand<CR>

"dont use arrows :-)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>z :call WinZoomToggle()<CR>
nmap <C-f> :vsplit<CR>:Files<CR>
nmap <C-g> :vsplit<CR>:Rg<CR>

"fuzzy file and text search
nmap <leader>f :call GFilesFallback()<CR>
nmap <leader>g :Rg<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR> 

"autoclose different stuff
inoremap (( ()<Esc>i
inoremap {{ {}<Esc>i
inoremap {{<CR> {<CR>}<Esc>O
inoremap [[ []<Esc>i
inoremap '' ''<Esc>i
inoremap "" ""<Esc>i

"remove search highlight from set hlsearch
nnoremap <leader>h :nohls<CR>
