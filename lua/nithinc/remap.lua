-- Initial Remaps
vim.g.mapleader = " "

-- New commands
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex, { desc = "Project [V]iew. Brings up file directory." })

-- clear highlights after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymap
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Disable arrow keys lmao
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- TODO I may not actually want this
-- Keys for moving between different vim windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Page up and page down center the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Something so bad that you can get cancelled apparently
vim.keymap.set("i", "<C-c>", "<Esc>")

-- fun
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Remap to turn on and off inline lsp warnings and errors
local function toggle_vt()
	vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end
vim.keymap.set("n", "<leader>vt", toggle_vt, { desc = "Toggle [v]irtual [t]ext" })

-- Copies the current line and pastes below. The current line is commented out.
vim.keymap.set("n", "yc", "yygccp")
-- TODO: I got the last one from https://www.reddit.com/r/neovim/comments/1h7f0bz/share_your_coolest_keymap/
-- There are probably more cool ones to yoink
