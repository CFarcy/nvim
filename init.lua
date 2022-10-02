-- Map leader should go first
vim.g.mapleader = " "

-- Loading config
require('sets')
require('plugins')
require('keymaps')
require('themes')
require('lspsetup')
require('completion')
require('null-ls-config')

-- Nvim-tree ?
vim.g.loaded = true
vim.g.loaded_netrwPlugin = true

-- Plugin config & activation
require("mason").setup()
require("nvim-tree").setup()
vim.cmd [[highlight NvimTreeNormal guibg=none]]
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "python",
        "javascript",
        "typescript",
        "rust",
        "lua",
    },
    highlight = { enable = true },
    --   treesitter indent not working well with python, :'(
    indent = { enable = false },
})

require("autocmd")
require("nvim-autopairs").setup()
