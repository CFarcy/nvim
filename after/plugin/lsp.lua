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

lsp.setup()
local lspkind = require('lspkind')
local cmp = require('cmp')
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
            mode = "text_symbol",
        })
    }
})

vim.diagnostic.config({
    virtual_text = true
})

