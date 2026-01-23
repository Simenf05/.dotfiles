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
		"--fallback-style=llvm",
		"--query-driver=/usr/bin/gcc,/usr/bin/clang",
	},
	init_options = {
		fallbackFlags = {
			"-I/usr/include",
			"-I/usr/local/include",
			"-std=c11",
		},
	},
})

vim.lsp.enable({
	"rust_analyzer",
	"clangd",
	"ts_ls",
	"lua_ls",
})
