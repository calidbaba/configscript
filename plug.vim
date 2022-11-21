"/.config/nvim/plug.vim
filetype plugin on
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'tpope/vim-commentary'
" IDE
Plug 'hrsh7th/cmp-nvim-lsp'       " Autocomplete source
Plug 'neovim/nvim-lspconfig'      " LSP
Plug 'hrsh7th/nvim-cmp'           " Autocomplete engine
Plug 'hrsh7th/cmp-buffer'         " Autocomplete from buffer
Plug 'onsails/lspkind-nvim'               " Get some icons
"Plug 'ycm-core/YouCompleteMe'
call plug#end()
