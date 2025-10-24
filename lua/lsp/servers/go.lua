local M = {}

function M.setup()
	-- Go Language Server
	-- vim.lsp.config('gopls', {
		-- cmd = { 'gopls' },
		-- filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
		-- root_markers = { 'go.work', 'go.mod', '.git' },
		-- settings = {
			-- gopls = {
				-- completeUnimported = true,
				-- usePlaceholders = true,
				-- analyses = {
					-- unusedparams = true,
				-- },
			-- },
		-- },
	-- })

	-- Enable the server
	-- vim.lsp.enable('gopls')
end

return M
