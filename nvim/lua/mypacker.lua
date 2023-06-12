-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Infrastructure
use 'wbthomason/packer.nvim'
use 'sheerun/vim-polyglot'
use 'tpope/vim-surround'
use 'ellisonleao/gruvbox.nvim'
use 'christoomey/vim-tmux-navigator'
use 'benmills/vimux'
use 'tpope/vim-commentary'
use 'folke/tokyonight.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
    'nvim-treesitter/nvim-treesitter',
} -- Syntax and so much more

-- IDE
use 'hrsh7th/cmp-nvim-lsp'       -- Autocomplete source
use 'neovim/nvim-lspconfig'      -- LSP
use 'hrsh7th/nvim-cmp'           -- Autocomplete engine
use 'hrsh7th/cmp-buffer'         -- Autocomplete from buffer
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use 'onsails/lspkind-nvim'               -- Get some icons
end)
