vim.g.loaded = true
vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true
vim.opt.termguicolors = true

require("nvim-tree").setup({
    view = {
        width = 40,
    },
    git = {
        enable = true,
        ignore = false,
    }
})
