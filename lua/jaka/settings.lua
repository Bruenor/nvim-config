vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- sets wrapping stuff
-- vim.opt.wrap = false
vim.opt.wrapmargin = 20

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "\\undodir"
vim.opt.undofile = true
vim.opt.updatetime = 200
vim.o.confirm = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Netrw settings
vim.g.netrw_keepdir = 0
--  vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3
-- line number
vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"
