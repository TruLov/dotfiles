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

            vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {
                pattern = {"*.cds"},
                callback = function()
                    local client = vim.lsp.start({
                        name = "cds_lsp",
                        -- autostart = true,
                        cmd = { "cds-lsp", "--stdio" },
                        root_dir = "/usr/local/bin/cds-lsp",
                        -- filetypes = { "cds" },
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
