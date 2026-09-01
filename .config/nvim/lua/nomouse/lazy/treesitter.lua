return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        local ensure_installed = {
            "vimdoc", "vim", "markdown", "javascript", "typescript", "zig",
            "c", "lua", "rust", "python", "go", "cpp", "java", "ocaml"
        }

        ts.setup({})
        ts.install(ensure_installed)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = ensure_installed,
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(args.match) or args.match
                if not pcall(vim.treesitter.language.add, lang) then
                    return
                end

                vim.treesitter.start(args.buf, lang)

                if not vim.list_contains({ "c", "cpp" }, lang) then
                    vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end
}
