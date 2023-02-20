
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "help",
        "vim",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "lua",
    },
    highlight = { enable = true },
    --   treesitter indent not working well with python, :'(
    indent = {
        enable = true,
        disable = { "python" },
    },
    autotag = {
        enable = true,
        disable = { "python" },
    },
})
