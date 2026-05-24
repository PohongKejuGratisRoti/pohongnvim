require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.colortheme"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.gitsigns"),
	require("plugins.autoformating"),
	require("plugins.alpha"),
	require("plugins.jdtls"),
	require("plugins.autotag"),
})


vim.cmd.colorscheme("catppuccin-latte")




-- diagnostics.lua (or init.lua)
vim.diagnostic.config({
	signs = true,
	virtual_text = true,
	underline = true,
})

vim.fn.sign_define("DiagnosticSignError", { text = "E" })
vim.fn.sign_define("DiagnosticSignWarn",  { text = "W" })
vim.fn.sign_define("DiagnosticSignHint",  { text = "H" })
vim.fn.sign_define("DiagnosticSignInfo",  { text = "I" })
