return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
            treesitter = true,
            alpha = true,
            mason = true,
            telescope = {
                enabled = true,
            },
            -- test
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = colors.subtext0 },
                    LineNrAbove = { fg = colors.surface1 },
                    LineNrBelow = { fg = colors.surface1 },
                }
            end,
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}
