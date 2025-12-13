return {
    {
        "windwp/nvim-autopairs",
        config = function()
        require("nvim-autopairs").setup({
        check_ts = true,   -- Use treesitter to check for pairs
        enable_moveright = true,
        enable_afterquote = true,
        ignored_next_char = "[%w%.]", -- don't add pair if next char is alphanumeric
        })
    end
    },
        {
        "windwp/nvim-ts-autotag",
        after = "nvim-treesitter",
        config = function()
            require("nvim-ts-autotag").setup()
        end
        }
}