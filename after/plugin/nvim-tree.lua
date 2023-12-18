vim.g.loaded = true
vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true
vim.opt.termguicolors = true

require("nvim-tree").setup({
    view = {
        width = 35,
        side = "right",
    },
    git = {
        enable = true,
        ignore = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})
