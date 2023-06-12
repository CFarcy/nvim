-- Lualine setup & theming
require('lualine').setup({
    options = {
        -- tokyonight, catpuccin, rose-pine, etc..
        theme = 'auto',
        icons_enabled = true,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        globalstatus = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch',
            'diff',
            {
                'diagnostics',
                symbols = { error = ' ', warn = ' ', info = ' ', hint = '⚑ ' }
            },
        },
        lualine_c = {
            {'%=', separator = ''},
            {
                'filetype',
                separator = ' ',
                icon_only = true,
                padding = { left = 1, right = 0 },
            },
            {
                'filename',
                file_status = true,
                path = 1,
                symbols = {
                    modified = '  ',
                    readonly = '',
                    unnamed = ''
                },
            },
            {'=%', separator = ''},
        },
        lualine_x = {'encoding', 'fileformat'},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {
                'filename',
                file_status = true,
                symbols = {
                    modified = '  ',
                    readonly = '',
                    unnamed = ''
                },
            }
        },
        lualine_x = { 'localtion' },
        lualine_y = {},
        lualine_z = {},
    },
    extensions = { 'fugitive' }
})


