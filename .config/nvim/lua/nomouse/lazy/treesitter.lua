return {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- list of parser names
            ensure_installed = { "vimdoc", "vim", "markdown", "javascript", "typescript", "zig", "c", "lua", "rust", "python", "go", "cpp", "java" },

            sync_installed = false,
            auto_install = true,

            indent = {
                enable = true
            },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },

        })

        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = { "src/parser.c", "src/scanner.c" },
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")
    end
}
