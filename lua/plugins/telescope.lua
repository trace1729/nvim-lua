return {
		"nvim-telescope/telescope.nvim",
		tag="0.1.5",
		dependencies={ "nvim-lua/plenary.nvim" },
    config = function ()
      local builtin = require("telescope.builtin")
      -- find files
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      -- live grep (C-f)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

      require("telescope").setup({
        pickers = {
          find_files = { theme = "cursor" }
        }
      })

  end
}
