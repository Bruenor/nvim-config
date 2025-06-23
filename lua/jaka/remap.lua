vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- delete into void
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- paste from clipboard before cursor
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

-- paste from clipboard after cursor
vim.keymap.set({"n", "v"}, "<leader>P", [["+P]])

-- move selection one line up or down
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
