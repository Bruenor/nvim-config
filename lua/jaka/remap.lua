vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-Right>", "gt") --switch tab right
vim.keymap.set("n", "<C-Left>", "gT") --switch tab left

-- paste from clipboard without putting deleted word inside a buffer
vim.keymap.set("x", "<leader>d", [["_dP]])
-- paste from system clipboard
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
-- delete into void
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- global search and replace of word in selection
vim.keymap.set("n", "<leader>x", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = 'move to next error in diagnostics window' })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = 'move to previous error in diagnostics window' })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = 'move to previous occurence in diagnostic window' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = 'move to next occurence in diagnostic window' })

-- Split windows keymaps
-- See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
