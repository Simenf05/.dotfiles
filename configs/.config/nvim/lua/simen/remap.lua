vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")


-- Clear highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', function()
    local win_exists = false
    for _, win in ipairs(vim.fn.getwininfo()) do
        if win.loclist == 1 then
            win_exists = true
            break
        end
    end

    if win_exists then
        vim.cmd('lclose')  -- close location list
    else
        vim.diagnostic.setloclist()  -- open location list
    end
end, { desc = 'Toggle diagnostic [Q]uickfix list' })

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help information' })

require('telescope').setup({
  defaults = {
        layout_strategy = 'vertical',
        layout_config = { width = 0.4 }
    }
})

-- Go to def
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Native vim go to def' })

-- blink

require("blink.cmp").setup({
    keymap = {
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-y>"] = { "accept", "fallback" },
    },
    completion = {
        menu = {
            auto_show = true,
        },
    },
    fuzzy = {
        implementation = "prefer_rust",
        prebuilt_binaries = {
            force_version = "v1.9.1",
        }
    },
    sources = {
        default = { "lsp", "buffer", "path" },
    },
})

-- harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true
    }
})
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)


-- autopairs
require('nvim-autopairs').setup({
    check_ts = true, -- Use treesitter to check for context
    fast_wrap = {},
})
