function Change_tab_size()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
end

vim.cmd([[
    augroup js_indent
        autocmd!
        autocmd Filetype vue,javascript,typescript,typescriptreact lua Change_tab_size() 
    augroup END
]])

-- Tree sitter indent looks bugged with python 
vim.cmd([[
    augroup no_treesitter_ident_python 
        autocmd!
        autocmd Filetype python lua require('nvim-treesitter.configs').setup({indent={enable=false}})
    augroup END
]])
