-- some autocommand try
function change_tab_size()
    -- change tab size to 2 for javascript file
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
end

_ = vim.cmd [[
    augroup FileWatch
        au!
        autocmd Filetype javascript,typescript,typescriptreact lua change_tab_size() 
    augroup END
]]
