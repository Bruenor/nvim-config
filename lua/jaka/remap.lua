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

-- delete highlighted
-- add also confirm with escape maybe?
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set("n", "<c-right>", "gt") --switch tab right
vim.keymap.set("n", "<c-left>", "gT") --switch tab left

-- paste from clipboard without putting deleted word inside a buffer
vim.keymap.set("x", "<leader>d", [["_dp]])
-- paste from system clipboard
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
-- delete into void
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- global search and replace of selected word (select it with visual mode first)
-- i think the default keybind for this is grn (better!) default renames in whole folder ! careful !
vim.keymap.set("n", "<leader>x", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = 'move to next error in diagnostics window' })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = 'move to previous error in diagnostics window' })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = 'move to previous occurence in diagnostic window' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = 'move to next occurence in diagnostic window' })
vim.keymap.set("n", "šd", function () vim.diagnostic.jump({ count = -1, float = true }) end )
vim.keymap.set("n", "đd", function () vim.diagnostic.jump({ count = 1, float = true }) end )

-- Split windows keymaps
-- See `:help wincmd` for a list of all window commands
