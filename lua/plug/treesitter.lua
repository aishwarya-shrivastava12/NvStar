require("nvim-treesitter.configs").setup({
    ensure_installed = {"cpp", "python", "javascript", "lua", "html", "css"},
    sync_install = false,
    auto_install = true,
    highlight = {
        additional_vim_regex_highlighting = true
    },
    autotag = {
        enable = true,
        filetypes = {"html", "xml", "javascriptreact", "typescriptreact"}
    },
    rainbow = {
        enable = false,
        extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- colors = {}, -- table of hex stringsnes = nil, -- Do not enable for files with more than n lines, int
    }
})
