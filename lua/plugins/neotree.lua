return {
		"nvim-neo-tree/neo-tree.nvim",
		branch="v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		},
    config = function ()
      -- live grep (C-f)
      vim.keymap.set("n", "tt", ":Neotree toggle<CR>", {})
    end
}
