vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.breakindent = true
-- Require at least two captial letters or \C for capital letters to matter
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Not sure what this actually does? It just seems to add space left of the line numbers?
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

-- Splits? Seems useful but right now I don't even use splits lol
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true

-- Displaying whitespace chars
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Live substitutions
vim.opt.inccommand = "split"

vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Swap file and memory settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.have_nerd_font = true
