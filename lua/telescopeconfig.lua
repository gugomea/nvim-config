local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>ee', vim.lsp.diagnostic.open_float(0, { scope = "line" }), {})

--------------------------------------------------------------------------------------------------------------------------- 
-- TL;DR is like <shift><k> but for error messages.
-- This function will pop up a floating window with the error of the
-- current line. If we press for the second time, it will enter the
-- window so that we can copy-paste messages.
local id, row, col = nil, 0, 0
local function toggle_float()
    local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
    if id ~= nil and current_row == row and current_col == col then
        -- The window can be invalid if we open the window, close the window (e.g by moving cursor, or pressing `q`)
        -- and then try to open the window from the same coordinates (because the id of the window
        -- won't be `nil' since we didn't focus on it)
        if vim.api.nvim_win_is_valid(id) then
            vim.api.nvim_set_current_win(id)
            id = nil
        -- if we closed the window, just open an new one
        else
            _, id = vim.diagnostic.open_float()
        end
    else
        _, id = vim.diagnostic.open_float()
    end
    row, col = current_row, current_col
end
vim.keymap.set('n', '<leader>sl', toggle_float, {})
---------------------------------------------------------------------------------------------------------------------------
