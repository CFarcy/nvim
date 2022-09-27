-- Theming config
-- Examples: 
--
-- Catppuccin
-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
-- require("catppuccin").setup({
--     transparent_background = true,
-- })
-- vim.cmd [[colorscheme catppuccin]]
-- 
-- Gruvbox community
-- vim.cmd [[colorscheme gruvbox]]
-- set background opacity to none ?
-- Keep line numbers white
--
-- Poimandres
--require('poimandres').setup({
--  bold_vert_split = false, -- use bold vertical separators
--  dim_nc_background = false, -- dim 'non-current' window backgrounds
--  disable_background = true, -- disable background
--  disable_float_background = true, -- disable background for floats
--  disable_italics = false, -- disable italics
--})
-- vim.cmd [[colorscheme poimandres]]
--
-- TokyoNight
require("tokyonight").setup({
    style = "moon",
    transparent = true,
    styles = {
        sidebars = "transparent",
    },
    sidebars = { "nvim-tree" },
})
vim.cmd [[colorscheme tokyonight]]
vim.cmd [[highlight Normal guibg=none]]
vim.cmd [[highlight LineNr guibg=none guifg=#ffffff]]

-- Lualine setup & theming
require("lualine").setup({
    options = { 
         theme = "tokyonight" 
         -- theme = "poimandres" 
    },
})
