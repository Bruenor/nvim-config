return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },

        -- { "stevearc/conform.nvim", opts = {} },
        -- "williamboman/mason.nvim",
        -- "williamboman/mason-lspconfig.nvim",
        -- { "j-hui/fidget.nvim", opts = {} },

        -- cmp stuff [AUTOCOMPLETION]
        -- "hrsh7th/cmp-nvim-lsp",
        -- "hrsh7th/cmp-buffer",
        -- "hrsh7th/cmp-path",
        -- "hrsh7th/cmp-cmdline",

        config = function()

            vim.lsp.config('lua_ls', {})
            vim.lsp.enable('lua_ls')

            vim.lsp.enable('phpactor')
            vim.lsp.config('phpactor', {

                -- root_dir = function()
                --     return "/wamp64/"
                -- end,
                --
                -- on_new_config = function(config, root_dir)
                --     config.cmd_cwd = root_dir
                --     config.cmd_env = vim.fn.environ()
                --     config.root_uri = "file://" .. root_dir  -- Set the root URI
                -- end,

            })
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

