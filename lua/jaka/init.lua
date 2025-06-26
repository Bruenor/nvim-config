require("jaka.remap")
require("jaka.settings")
require("jaka.init_lazy")

print("hello from Jaka!")

vim.api.nvim_create_user_command('EnablePhpactor', function() vim.lsp.enable('phpactor') end, {})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    desc = "Delete trailing whitespace on save",
    group = vim.api.nvim_create_augroup("bravo", {}),
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


