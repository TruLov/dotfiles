return {
	"kdheepak/lazygit.nvim",
	config = function()
		require("lazy").setup({
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		})

		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", {})
	end,
}
