-- Simple rose pine theme https://github.com/rose-pine/neovim
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- TODO: I have no idea what highlights are...
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000, -- ensures this runs first
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
				},
			})

			ColorMyPencils()
		end,
	},
	-- Todo comment highlighting
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = vim.g.have_nerd_font },
	},
	-- TODO:
}
