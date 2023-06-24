require("indent_blankline").setup {
    filetype_exclude = {
        "help",
        "terminal",
        "lspinfo",
        "TelescopePrompt",
        "TelescoeResults",
        "mason",
        "",
    },
    buftype_exclude = { "terminal", "nofile", "help", "packer", "fugitive" },

    use_treesitter_scope = true,
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    show_current_context = true,
    indent_setColors = 0,
    leadingSpaceEnabled = 0,
    leadingSpaceChar = " ",
    space_char_blankline = ' ',
}
