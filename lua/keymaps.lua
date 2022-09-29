-- Global keymap setup
local setkeymap = vim.keymap.set
setkeymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
setkeymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
setkeymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
setkeymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
setkeymap("n", "<leader>e", ":NvimTreeToggle<CR>")
setkeymap("i", "\"", "\"\"<left>")
setkeymap("i", "'", "''<left>")
setkeymap("i", "[", "[]<left>")
setkeymap("i", "{", "{}<left>")
setkeymap("i", "(", "()<left>")
setkeymap("i", "(<space>", "()")
setkeymap("i", "[<CR>", "[<CR>]<ESC>O")
setkeymap("i", "(<CR>", "(<CR>)<ESC>O")
setkeymap("i", "{<CR>", "{<CR>}<ESC>O")

