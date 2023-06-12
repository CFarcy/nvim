require('telescope').setup({
    pickers = {
        find_files = {
            layout_config = {
                prompt_position = "top",
            },
            layout_strategy = "horizontal",
            sorting_strategy = "ascending",
        },
        buffers = {
            theme = "dropdown",
            previewer = false,
        },
        live_grep = {
            theme = "ivy",
        },
    },
})
