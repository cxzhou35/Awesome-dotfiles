local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end
local keymap = vim.keymap.set


lspsaga.init_lsp_saga({
  -- diagnostic sign
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  custom_kind = {
    Field = { " ", " ", " ", "ﴞ " },
  },
  -- code action title icon
  code_action_icon = "🫧 ",
  show_diagnostic_source = true,
  border_style = "rounded",
  diagnostic_source_bracket = {},
  -- finder icons
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_quit = "<Esc>",
  rename_in_select = true,
  definition_preview_icon = "  ",
  -- show outline
  show_outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    auto_enter = true,
    auto_preview = true,
    virt_text = '┃',
    jump_key = 'o',
    -- auto refresh when change buffer
    auto_refresh = true,
  },
})

-- Code action
keymap("n", "ga", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("v", "ga", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

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
keymap("n", "[e", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]e", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n", "go", "<cmd>LSoutlineToggle<CR>", { silent = true })

-- Hover Doc
keymap("n", "gh", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Signature Help
keymap("n", "gS", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { silent = true })

-- Implementation
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })

-- Format
keymap("n", "gf", "<cmd>lua vim.lsp.buf.foamat()<CR>", { silent = true })

-- References
keymap("n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })

-- Declaration
keymap("n", "gs", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
