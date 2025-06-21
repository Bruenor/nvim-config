return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()

        require("nvim-treesitter.configs").setup({

            ensure_installed = {
                "vimdoc", "javascript", "css", "php", "html", "lua",
            },

            indent = {
                enable = true
            }
        })
        end
    }
