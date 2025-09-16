vim.pack.add({ { src = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim.git" } }) -- dependency for Telescope
vim.pack.add({ { src = "https://github.com/nvim-lua/plenary.nvim.git" } }) -- dependency for Telescope

vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/mason-org/mason.nvim" }, -- Mason to install the LSP servers
    -- Telescope for moving between files and buffers
    {
        src = "https://github.com/nvim-telescope/telescope.nvim.git",
        version = "0.1.x" ,
    },
})

require("mason").setup({})
require("telescope").setup({})
