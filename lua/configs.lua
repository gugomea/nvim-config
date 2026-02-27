vim.cmd('colorscheme gruvbox')
vim.cmd[[set tabstop=4]]
vim.cmd[[set shiftwidth=4]]
vim.cmd[[set expandtab]]
vim.cmd[[set colorcolumn=80]]

vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme retrobox]])

vim.cmd('hi Normal ctermbg=none guibg=none')
-- Hide the status line
vim.o.laststatus = 0
-- Hide cursor positoin
vim.o.ruler = false
-- Hide keys
vim.o.showcmd = false
-- nowrap
vim.o.wrap = false

vim.cmd('hi ColorColumn ctermbg=grey guibg=grey')
