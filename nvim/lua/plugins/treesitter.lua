return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.cds = {
			install_info = {
				-- local path or git repo
				url = "~/projects/tree-sitter-cds",
				files = { "src/parser.c", "src/scanner.c" },
			},
			filetype = "cds",
		}
	end,
}
