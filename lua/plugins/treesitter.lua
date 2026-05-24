return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSUpdate", "TSInstall", "TSUninstall" },
	opts_extend = { "ensure_installed" },
	opts = {
		ensure_installed = {
			"lua",
			"python",
			"javascript",
			"typescript",
			"vimdoc",
			"vim",
			"regex",
			"terraform",
			"sql",
			"dockerfile",
			"toml",
			"json",
			"java",
			"groovy",
			"go",
			"gitignore",
			"graphql",
			"yaml",
			"make",
			"cmake",
			"markdown",
			"markdown_inline",
			"bash",
			"tsx",
			"css",
			"html",
			"rust",
			"cpp",
			"fortran",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)
		vim.treesitter.language.register("tsx", "typescriptreact")
		vim.filetype.add({ extension = { tf = "terraform" } })
		vim.filetype.add({ extension = { tfvars = "terraform" } })
		vim.filetype.add({ extension = { pipeline = "groovy" } })
		vim.filetype.add({ extension = { multibranch = "groovy" } })
	end,
}
