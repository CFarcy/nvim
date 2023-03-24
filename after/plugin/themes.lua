-- Theming config
require('poimandres').setup({
  bold_vert_split = false, -- use bold vertical separators
  dim_nc_background = true, -- dim 'non-current' window backgrounds
  disable_background = true,
  disable_float_background = true,
  disable_italics = false,
})

require("tokyonight").setup({
    style = "moon",
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
    sidebars = { "nvim-tree" },
})

require("catppuccin").setup({
    transparent_background = true,
})

require("rose-pine").setup({
    disable_background = true,
})

function ColorMe(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe()
