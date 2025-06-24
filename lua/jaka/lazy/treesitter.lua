return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ':TSUpdate',

        opts = {
            ensure_installed = { 'html', 'lua', 'markdown', 'php', 'css' },
            -- Autoinstall languages that are not installed
            auto_install = true,
        },
    }
}
