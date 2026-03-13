return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^7', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    "tpope/vim-commentary",
	"tpope/vim-fugitive",
    --"andweeb/presence.nvim",
    "vyfor/cord.nvim",
    "m4xshen/autoclose.nvim",

	"eandrju/cellular-automaton.nvim",
    "ThePrimeagen/vim-be-good",
}
