require("config.defaults")
require("config.keymaps")
require("config.plugins")

-- function My_preview_stack_trace()
-- 	local line = vim.api.nvim_get_current_line()
-- 	local pattern = "[^/]+([^:]+):(%d+):(%d+)"
-- 	local file_name, line_nr, col_nr = string.match(line, pattern)
-- 	print(file_name, line_nr, col_nr)
-- 	if file_name and line_nr and col_nr then
-- 		vim.cmd("e " .. file_name)
-- 		vim.api.nvim_win_set_cursor(0, { tonumber(line_nr), tonumber(col_nr) })
-- 	end
-- end
--
-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	pattern = "*:make*",
-- 	callback = function()
-- 		vim.keymap.set("n", "<leader>pp", My_preview_stack_trace, { silent = true, buffer = true })
-- 	end
-- })

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

local servers = { 'clangd', 'pyright', 'html', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
	}
end
