return {
    {
        "neovim/nvim-lspconfig",
        { "mason-org/mason.nvim", opts = {}, },
        { "mason-org/mason-lspconfig.nvim", opts = {}, },
        -- { "stevearc/conform.nvim", opts = {} },
        -- { "j-hui/fidget.nvim", opts = {} },

        -- cmp stuff [AUTOCOMPLETION]
        -- "hrsh7th/cmp-nvim-lsp",
        -- "hrsh7th/cmp-buffer",
        -- "hrsh7th/cmp-path",
        -- "hrsh7th/cmp-cmdline",
        -- "hrsh7th/nvim-cmp",

        config = function()

            vim.lsp.config('lua_ls', {})
            vim.lsp.enable('lua_ls')

            vim.lsp.enable('phpactor')
            -- vim.lsp.config('phpactor', { workspace_required = false })

            vim.diagnostic.config({
                -- update_in_insert = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    header = "",
                    prefix = "",
                },
            })
        end,
    }
}
-- CTRL+x+o
-- :help ins-completion
-- :help lspconfig-all
-- :LspInfo

