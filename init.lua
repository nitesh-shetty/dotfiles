-- git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
-- copy this file

-- You can add your own plugins here or in other files in this directory!
--
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'alexghergh/nvim-tmux-navigation',
	config = function()
	local nvim_tmux_nav = require('nvim-tmux-navigation')
	nvim_tmux_nav.setup {
		disable_when_zoomed = true -- defaults to false
	}

	vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
	vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
	vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
	vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
	vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
	vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

	-- Set highlight on search
	vim.o.hlsearch = false

	-- Set relativenumber
	vim.o.relativenumber = true

	-- Set colorcolumn
	-- vim.o.colorcolumn = "76,81"
	vim.opt.colorcolumn = "76,81"

	-- Make line numbers default
	vim.wo.number = true

	-- Enable mouse mode
	vim.o.mouse = 'a'

	-- Enable break indent
	vim.o.breakindent = true

	-- Save undo history
	vim.o.undofile = true

	-- Case insensitive searching UNLESS /C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true

	-- Decrease update time
	vim.o.updatetime = 250
	vim.wo.signcolumn = 'yes'

	-- Set colorscheme
	vim.o.termguicolors = true
	vim.cmd [[colorscheme onedark]]

	-- Set completeopt to have a better completion experience
	vim.o.completeopt = 'menuone,noselect'
		end,
}
