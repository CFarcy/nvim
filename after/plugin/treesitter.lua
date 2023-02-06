
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "help",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "lua",
    },
    highlight = { enable = true },
    --   treesitter indent not working well with python, :'(
    indent = { enable = true },
    autotag = { enable = true },
})

