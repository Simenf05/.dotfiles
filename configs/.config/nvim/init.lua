require("config.lazy")

require("simen.pref")
require("simen.remap")


local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.jdtls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.gopls.setup{}
lspconfig.clangd.setup{}

