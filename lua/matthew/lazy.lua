local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "matthew.plugins" },
		{ import = "matthew.plugins.lsp" },
		{ import = "matthew.plugins.database" },
		{ import = "matthew.plugins.jupyter" },
		{ import = "matthew.plugins.debug" },
	},
}, {})
