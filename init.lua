vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.mouse = "a"	
vim.opt.encoding = "UTF-8"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8

-- Better to do this asap, to avoind conflict with plugins mapping
vim.g.mapleader = " "
require('plugins')

-- Theming
-- Example: 
-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
-- require("catppuccin").setup({
--     transparent_background = true,
-- })
-- vim.cmd [[colorscheme catppuccin]]
-- 
-- vim.cmd [[colorscheme gruvbox]]
-- set background opacity to none ?
-- Keep line numbers white
vim.cmd [[colorscheme tokyonight-moon]]
vim.cmd [[highlight Normal guibg=none]]
vim.cmd [[highlight LineNr guibg=none guifg=#ffffff]]

-- Nvim-tree ?
vim.g.loaded = true
vim.g.loaded_netrwPlugin = true

-- Plugin config & activation
require("mason").setup()
require("nvim-tree").setup()
require("lualine").setup({
    options = { theme = "tokyonight" },
})
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "python", 
        "javascript", 
		"typescript", 
		"rust",
		"lua",
    },
    highlight = { enable = true },
})
require('lspconfig')['jedi_language_server'].setup({
    on_attach = on_attach,
    flags = lsp_flags,
})
require('lspconfig')['pyright'].setup({
    on_attach = function(client)
        client.server_capabilities.completionProvider = false
    end,
    flags = lsp_flags,
})
require('lspconfig')['tsserver'].setup({
    on_attach = on_attach,
    flags = lsp_flags,
})
require('lspconfig')['eslint'].setup({
    on_attach = on_attach,
    flags = lsp_flags,
})
require('cmp').setup({
  sources = {
    { name = 'nvim_lsp' }
  }
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require('lspconfig')['clangd'].setup({
  capabilities = capabilities,
})

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Using Lua functions
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("i", "\"", "\"\"<left>")
map("i", "'", "''<left>")
map("i", "[", "[]<left>")
map("i", "{", "{}<left>")
map("i", "(", "()<left>")
map("i", "(<space>", "()")
map("i", "[<CR>", "[<CR>]<ESC>O")
map("i", "(<CR>", "[<CR>)<ESC>O")
map("i", "{<CR>", "{<CR>}<ESC>O")



