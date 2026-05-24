return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,
                enable_moveright = true,
                enable_afterquote = true,
                ignored_next_char = "[%w%.]",
            })
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        dependencies = "nvim-treesitter/nvim-treesitter",
        ft = {
            "html",
            "xml",
            "jsx",
            "tsx",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
        },
        config = function()
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false,
                },
                per_filetype = {
                    ["html"] = {
                        enable_close = true,
                    },
                },
            })
        end,
    },
}