require("simen.pref")
require("config.lazy")
require("simen.remap")

require('java').setup()

local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.jdtls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.gopls.setup{}


local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "high", { fg = "#524f67" })
end)

require("ibl").setup { indent = { highlight = "high" } }
