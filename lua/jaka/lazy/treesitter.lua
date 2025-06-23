return { 
    {
        'nvim-treesitter/nvim-treesitter', 
        lazy = false, 
        branch = 'main', 
        build = ':TSUpdate',

        -- config = function ()
        --     require'nvim-treesitter'.install({ 'html', 'javascript', 'css', 'php' })
        -- end
    }
}
