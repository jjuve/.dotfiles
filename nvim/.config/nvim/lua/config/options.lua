vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.signcolumn = 'yes'
vim.o.inccommand = 'split'

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)