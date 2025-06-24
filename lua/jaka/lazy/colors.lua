return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night",
				terminal_colors = true,
                transparent = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
			vim.cmd("colorscheme tokyonight-night")
		end
	}
}
