local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
    'jedi_language_server', -- for some reason, jedi give better insight for django than pyright
    'tsserver',
    'eslint',
    'lua_ls',
    'dockerls',
    'yamlls',
    'rust_analyzer'
})
--
-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
local lspconfig = require('lspconfig')
lspconfig.eslint.setup({
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue' },
    settings = {
        workingDirectory = { mode = 'auto' },
        format = { enable = true },
        lint = { enable = true },
    }
})

lsp.setup()
local lspkind = require('lspkind')
local cmp = require('cmp')
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
            mode = "text_symbol",
        })
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-n>'] = cmp.mapping.scroll_docs(-4),
      ['<C-p>'] = cmp.mapping.scroll_docs(4),
      ['<CR>'] = cmp.mapping.complete(),
      ['<ESC>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
})

vim.diagnostic.config({
    virtual_text = true,
    float = { border = 'solid' }
})

-- Add border to lspinfo floating window
require('lspconfig.ui.windows').default_options.border = 'single'
