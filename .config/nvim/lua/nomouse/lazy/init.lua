return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
    {
        'mrcjkb/rustaceanvim',
        version = '^7', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    {
        "nvim-java/nvim-java",
        config = function()
            require("java").setup()
            vim.lsp.enable("jdtls")
        end,
    },
    "tpope/vim-commentary",
	"tpope/vim-fugitive",
    "vyfor/cord.nvim",
    "m4xshen/autoclose.nvim",

    "ThePrimeagen/vim-be-good",
}
