local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier,  -- Eslint should not be use for formatting.
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.black,
    }
})
