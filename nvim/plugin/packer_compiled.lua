-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/baba/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/baba/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/baba/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/baba/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/baba/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["NeoNoName.lua"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/NeoNoName.lua",
    url = "https://github.com/nyngwang/NeoNoName.lua"
  },
  ["NeoZoom.lua"] = {
    config = { "\27LJ\2\ný\3\0\0\5\1\17\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0\n\0\0\0X\0\20€6\0\3\0009\0\4\0009\0\5\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\0\2\2\15\0\0\0X\1\n€6\0\3\0009\0\6\0'\2\a\0B\0\2\0016\0\3\0009\0\4\0009\0\b\0-\2\0\0B\0\2\1K\0\1\0006\0\3\0009\0\4\0009\0\t\0)\2\0\0B\0\2\0029\0\n\0\6\0\v\0X\0\1€K\0\1\0006\0\3\0009\0\4\0009\0\f\0B\0\1\2.\0\0\0006\0\3\0009\0\6\0'\2\a\0B\0\2\0016\0\3\0009\0\6\0'\2\r\0B\0\2\0016\0\0\0'\2\14\0B\0\2\0029\0\15\0B\0\1\2\n\0\0\0X\1\6€6\1\3\0009\1\4\0019\1\b\1\18\3\0\0B\1\2\1X\1\4€6\1\3\0009\1\6\1'\3\16\0B\1\2\0016\1\3\0009\1\6\1'\3\r\0B\1\2\1K\0\1\0\1€\14NeoNoName2get_current_or_first_valid_listed_no_name_buf\16neo-no-name\rwincmd p\25nvim_get_current_buf\5\rrelative\24nvim_win_get_config\25nvim_set_current_buf\18NeoZoomToggle\bcmd\22nvim_win_is_valid\bapi\bvim\14FLOAT_WIN\rneo-zoom\frequireÅ\1\1\0\b\0\v\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0006\5\0\0'\a\1\0B\5\2\0029\5\t\5\18\6\0\0B\1\5\1+\1\0\0006\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0003\6\n\0\18\a\0\0B\2\5\0012\0\0€K\0\1\0\0\rneo_zoom\t<CR>\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\vnowait\2\nsetup\rneo-zoom\frequire\0" },
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/NeoZoom.lua",
    url = "https://github.com/nyngwang/NeoZoom.lua"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  vimux = {
    loaded = true,
    path = "/home/baba/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/benmills/vimux"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: NeoZoom.lua
time([[Config for NeoZoom.lua]], true)
try_loadstring("\27LJ\2\ný\3\0\0\5\1\17\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0\n\0\0\0X\0\20€6\0\3\0009\0\4\0009\0\5\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\0\2\2\15\0\0\0X\1\n€6\0\3\0009\0\6\0'\2\a\0B\0\2\0016\0\3\0009\0\4\0009\0\b\0-\2\0\0B\0\2\1K\0\1\0006\0\3\0009\0\4\0009\0\t\0)\2\0\0B\0\2\0029\0\n\0\6\0\v\0X\0\1€K\0\1\0006\0\3\0009\0\4\0009\0\f\0B\0\1\2.\0\0\0006\0\3\0009\0\6\0'\2\a\0B\0\2\0016\0\3\0009\0\6\0'\2\r\0B\0\2\0016\0\0\0'\2\14\0B\0\2\0029\0\15\0B\0\1\2\n\0\0\0X\1\6€6\1\3\0009\1\4\0019\1\b\1\18\3\0\0B\1\2\1X\1\4€6\1\3\0009\1\6\1'\3\16\0B\1\2\0016\1\3\0009\1\6\1'\3\r\0B\1\2\1K\0\1\0\1€\14NeoNoName2get_current_or_first_valid_listed_no_name_buf\16neo-no-name\rwincmd p\25nvim_get_current_buf\5\rrelative\24nvim_win_get_config\25nvim_set_current_buf\18NeoZoomToggle\bcmd\22nvim_win_is_valid\bapi\bvim\14FLOAT_WIN\rneo-zoom\frequireÅ\1\1\0\b\0\v\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0006\5\0\0'\a\1\0B\5\2\0029\5\t\5\18\6\0\0B\1\5\1+\1\0\0006\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0003\6\n\0\18\a\0\0B\2\5\0012\0\0€K\0\1\0\0\rneo_zoom\t<CR>\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\vnowait\2\nsetup\rneo-zoom\frequire\0", "config", "NeoZoom.lua")
time([[Config for NeoZoom.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
