-- Lua Language Server
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }, -- recognize `vim` as a global
			},
			telemetry = { enable = false },
		},
	},
})

vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
	},
})

vim.lsp.config("gopls", {
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = false, -- Disables Neovim's buggy built-in watcher
			},
		},
	},
	settings = {
		gopls = {
			buildFlags = { "-tags=integration" },
		},
	},
})

vim.lsp.enable({
	"rust_analyzer",
	"clangd",
	"jdtls",
	"ts_ls",
	"lua_ls",
	"pyright",
	"hls",
	"gopls",
	"marksman",
})
