return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            quickfile = { enabled = true },
            picker = { enabled = true },
            dim = { enabled = true },
            scope = { enabled = true },

            gh = { enabled = true },
        },

        keys = {
            { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
            { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
            { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
            { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },
        }
    }
}
