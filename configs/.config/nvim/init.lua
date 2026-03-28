require("simen.pref")
require("simen.autopairs")

local gh = function(x)
	return "https://github.com/" .. x
end

vim.pack.add({
	gh("neovim/nvim-lspconfig"),
	gh("lewis6991/gitsigns.nvim"),
	gh("rose-pine/neovim"),
	gh("nvim-lua/plenary.nvim"),
	gh("nvim-telescope/telescope.nvim"),
	gh("stevearc/conform.nvim"),
	gh("windwp/nvim-autopairs"),
	{
		src = gh("ThePrimeagen/harpoon"),
		version = "harpoon2",
	},
	{
		src = gh("saghen/blink.cmp"),
		version = "v1.9.1",
	},
})


vim.cmd("colorscheme rose-pine")

require("simen.remap")
require("simen.git")

require("lsp")
require("simen.format")
