--fuzzy search files
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--makes it easier to set keymaps
local function imap(comb, cmd)
	vim.api.nvim_set_keymap('i', comb, cmd, {noremap = true, silent = true})
end

local function nmap(comb, cmd)
	vim.api.nvim_set_keymap('n', comb, cmd, {noremap = true, silent = true})
end

local function tmap(comb, cmd)
	vim.api.nvim_set_keymap('t', comb, cmd, {noremap = true, silent = true})
end


imap('jj', '<esc>l')

nmap('<Leader>w',':wa<CR>')
nmap('<Leader>q',':q<CR>')
nmap('<leader>v', ':split <CR>')
nmap('<leader>s', ':vsplit <CR>')
nmap('<Leader>b',':e#<CR>')

imap('""', '""<esc>i')
imap("''" ,"''<esc>i")
imap('((', '()<esc>i')
imap('[[', '[]<esc>i')
imap('{{','{}<esc>i')
imap('{{<CR>','{<CR>}<esc>ko')
imap('$$', '$$<esc>i')
nmap('<leader>h', ':nohls<CR>')

--tmux like zoom
-- nmap('<leader>z', require("neo-zoom").neo_zoom)

function run_program(dict)
	local filetype = vim.bo.filetype
	if dict[filetype] == nil then print("filetype not supported") return end
	vim.api.nvim_command(":w")
	vim.api.nvim_command(dict[filetype])
end

run_dict = {
	python = ':!python3 %',
	javascript = ':!node %',
	bash = ':!bash %',
	c = ':!gcc % -o %<  && ./%< %',
	cpp = ':!make',
}
nmap('<F9>', ':lua run_program(run_dict)<CR>')
