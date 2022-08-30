local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end
local keymap = vim.keymap.set


lspsaga.init_lsp_saga({
    -- diagnostic sign
    diagnostic_header = { " ", " ", " ", "ﴞ " },
    -- code action title icon
    code_action_icon = "🫧 ",
    -- finder icons
    finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
    },
})

-- Code action
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Definition preview
keymap("n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump 
keymap("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
keymap("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n","go", "<cmd>LSoutlineToggle<CR>",{ silent = true })

-- Hover Doc
keymap("n", "gh", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

local action = require("lspsaga.action")

-- scroll in hover doc or definition preview window
vim.keymap.set("n", "gf", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })

-- scroll in hover doc or definition preview window
vim.keymap.set("n", "gb", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })

