-- Function to insert a pair only when it makes sense
local function smart_pair(open, close)
    return function()
        local col = vim.fn.col(".") - 1
        local line = vim.fn.getline(".")
        local char_under = line:sub(col+1, col+1)
        -- Only insert pair if next character is empty or whitespace
        if char_under == "" or char_under:match("%s") then
            return open .. close .. "<Left>"
        else
            return open
        end
    end
end

-- Set keymaps using the function
-- vim.keymap.set("i", "(", smart_pair("(", ")"), {expr = true, noremap = true})
-- vim.keymap.set("i", "[", smart_pair("[", "]"), {expr = true, noremap = true})
-- vim.keymap.set("i", "{", smart_pair("{", "}"), {expr = true, noremap = true})
-- vim.keymap.set("i", "'", smart_pair("'", "'"), {expr = true, noremap = true})
-- vim.keymap.set("i", "\"", smart_pair("\"", "\""), {expr = true, noremap = true})
