-- Native NeoVim LSP setup
-- attach client (plugin) to lsp server
-- and define behavior

local on_attach = function ()
    -- local keymap for lsp, cmp & diag
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set('n', '<leader>df', '<cmd>Telescope diagnostics<cr>', {buffer=0})
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require('lspconfig')
-- Lua
lspconfig['sumneko_lua'].setup({
    on_attach = on_attach,
    capapilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            }
        }
    }
})


-- Typescript-language-server
lspconfig['tsserver'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- Eslint vscode server, needed ?
-- lspconfig['eslint'].setup({
--     on_attach = on_attach,
--     capabilities = capabilities,
-- })

-- Python jedi, look likes the best for Django
lspconfig['jedi_language_server'].setup({
    on_attach = on_attach,
    capapilities = capabilities,
})

-- Python pyright, what is the difference with jedi?
-- lspconfig['pyright'].setup({
--     on_attach = on_attach,
--     capabilitites = capabilities,
-- })

-- Rust
lspconfig['rust_analyzer'].setup({
    on_attach = on_attach,
    capapilities = capabilities,
})
