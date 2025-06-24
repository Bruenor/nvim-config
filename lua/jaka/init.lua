require("jaka.remap")
require("jaka.settings")
require("jaka.init_lazy")

print("hello from Jaka!")

vim.api.nvim_create_user_command('EnablePhpactor', function()
    vim.lsp.enable('phpactor')
end, {})
