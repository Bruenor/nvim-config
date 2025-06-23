vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Create a highlight group with green background
vim.api.nvim_set_hl(0, "MyCustomHighlight", { bg = "#1c3313" }) -- Adjust color as needed

-- Set up an autocmd to apply the highlight to lines starting with 'i:'
vim.cmd([[
  augroup HighlightLines
    autocmd!
    autocmd BufEnter,BufRead * call matchadd('MyCustomHighlight', '^i:.*')
  augroup END
]])

-- Highlight text on yank 
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})
