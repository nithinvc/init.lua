return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = false, -- We handle this in cmp.lua
					dismiss = "<C-]>",
					next = "<M-]>",
					prev = "<M-[>",
				},
			},
			panel = { enabled = false },
		})
	end,
}
