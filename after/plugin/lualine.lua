-- Lualine setup & theming
require("lualine").setup({
    options = {
        -- tokyonight, catpuccin, rose-pine, etc..
        theme = "gruvbox",
        icons_enabled = true,
    },
    sections = {
        lualine_c = {
            { "filename", file_status = true, path = 1 },
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            { "filename", file_status = true, path = 1 },
        },
        lualine_x = { "localtion" },
        lualine_y = {},
        lualine_z = {},
    },
    extensions = { "fugitive" }
})
