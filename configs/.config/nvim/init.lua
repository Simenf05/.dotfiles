require("simen.pref")
require("config.lazy")
require("simen.remap")

require('java').setup()

local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.jdtls.setup{}
lspconfig.rust_analyzer.setup{}

