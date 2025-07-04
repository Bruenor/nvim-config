vim.g.mapleader = " "
vim.g.maplocaleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- join lower line at the end of current one
-- vim.keymap.set("n", "J", "mzj`z")
-- movement and keep centered
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- paste from clipboard without putting deleted word inside a buffer
vim.keymap.set("v", "<leader>d", [["_dp]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- global search and replace of selected word
-- LSP client shortcut for rename across whole project is "grn"
vim.keymap.set("n", "<leader>x", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- maybe lower four are useless
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = 'move to next error in diagnostics window' })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = 'move to previous error in diagnostics window' })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = 'move to previous occurence in diagnostic window' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = 'move to next occurence in diagnostic window' })
-- replace default [d and ]d of neovim lsp because of slovenian keyboard layout
vim.keymap.set("n", "šd", function () vim.diagnostic.jump({ count = -1, float = true }) end )
vim.keymap.set("n", "đd", function () vim.diagnostic.jump({ count = 1, float = true }) end )

-- Split windows keymaps
-- See `:help wincmd` for a list of all window commands
-- noremap means it overwrites default keymap if one is found
vim.keymap.set("n", "<C-Up>", "<cmd>resize +3<CR>", { noremap = true, desc = "increase window height by 3 lines" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -3<CR>", { noremap = true,  desc = "decrease window height by 3 lines" })
-- these two work best if focus is on the right hand side window
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +3<CR>", { noremap = true, desc = "increase window width by 3 lines" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -3<CR>", { noremap = true,  desc = "decrease window width by 3 lines" })
