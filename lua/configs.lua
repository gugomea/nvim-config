-- opt.colorcolumn = "80" -- Highlight column 80
-- opt.autoindent = true -- Enable auto indentation
-- opt.expandtab = true -- Use spaces instead of tabs
-- opt.tabstop = 4 -- Number of spaces for a tab
-- opt.softtabstop = 4 -- Number of spaces for a tab when editing
-- opt.shiftwidth = 4 -- Number of spaces for autoindent
-- opt.shiftround = true -- Round indent to multiple of shiftwidth
-- opt.listchars = "tab: ,multispace:|   ,eol:󰌑" -- Characters to show for tabs, spaces, and end of line
-- opt.scrolloff = 0 -- Keep 0 lines above and below the cursor
-- opt.inccommand = "nosplit" -- Shows the effects of a command incrementally in the buffer
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
