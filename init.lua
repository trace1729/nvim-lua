vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader=" "

-- 添加包管理器 lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	print("hello", lazypath)
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
	-- 安装注意插件
	{
		"catppuccin/nvim",
		name="catppuccin",
		priority=1000
	},
	-- 安装模糊查找器 telescope
	{
		"nvim-telescope/telescope.nvim",
		tag="0.1.5",
		dependencies={ "nvim-lua/plenary.nvim" }
	}
}
require("lazy").setup(plugins)
require("catppuccin").setup()
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
require("telescope").setup({
	pickers = {
		find_files = { theme = "cursor" }
	}
})
-- live grep (C-f)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

vim.cmd.colorscheme "catppuccin"
