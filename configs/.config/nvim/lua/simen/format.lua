require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
})

local conform = require("conform")
vim.keymap.set("n", "<leader>cf", conform.format)
