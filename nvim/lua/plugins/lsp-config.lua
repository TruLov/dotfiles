return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            local lspconfig = require("mason-lspconfig")

            lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "pyright",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.pyright.setup({})

            vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
                pattern = { "*.cds" },
                callback = function()
                    local client = vim.lsp.start({
                        name = "cds_lsp",
                        cmd = { "cds-lsp", "--stdio" },
                        root_dir = "/usr/local/bin/cds-lsp",
                        init_options = { provideFormatter = true },
                        -- autostart = true,
                        -- filetypes = { "cds" },
                        single_file_support = true,
                        settings = {
                            cds = { validate = true },
                        },
                    })
                    vim.lsp.buf_attach_client(0, client)
                end,
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
