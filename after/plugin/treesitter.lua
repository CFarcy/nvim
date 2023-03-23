
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
    indent = {
        enable = true,
        --   treesitter indent not working well with python, :'(
        -- disable = { "python" },
    },
    autotag = {
        enable = true,
        disable = { "python" },
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000,
    }
})


