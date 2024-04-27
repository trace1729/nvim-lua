return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
                local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
                parser_config.blade = {
                        install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = {"src/parser.c"},
        branch = "main"
      },
      filetype = "blade"
                }
                local configs = require("nvim-treesitter.configs")
                configs.setup({
                        ensure_installed = {},
                        auto_install = true,
                        highlight = { enable = true },
                        indent = { enable = true },
                })
        end,
}
