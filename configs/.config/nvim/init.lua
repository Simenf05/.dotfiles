require("simen.pref")
require("simen.autopairs")

local gh = function(x)
	return "https://github.com/" .. x
end

vim.pack.add({
    gh("neovim/nvim-lspconfig"),
	gh("saghen/blink.cmp"),
	gh("lewis6991/gitsigns.nvim"),
	gh("rose-pine/neovim"),
	gh("nvim-lua/plenary.nvim"),
	gh("nvim-telescope/telescope.nvim"),
	gh("stevearc/conform.nvim"),
	gh("lukas-reineke/indent-blankline.nvim"),
	gh("nvim-treesitter/nvim-treesitter"),
})

vim.cmd("colorscheme rose-pine")

require("simen.remap")
require("simen.git")

require("lsp")
require("simen.format")
