local status, saga = pcall(require, 'lspsaga')
if (not status) then return end
local keymap = vim.keymap.set

saga.setup({
  -- ui config
  ui = {
    -- Currently, only the round theme exists
    theme = "round",
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "rounded",
    winblend = 0,
    expand = "",
    collapse = "",
    preview = " ",
    code_action = "💡",
    diagnostic = "🐞",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    kind = {},
  },
  -- winbar config
  symbol_in_winbar = {
    enable = true,
    show_file = true,
    separator = "  ",
    hide_keyword = true,
    folder_level = 3,
    respect_root = false,
    color_mode = true,
  },
  -- lightbulb config
  lightbulb = {
    enable = true,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  -- diagnostic config
  diagnostic = {
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    --1 is max
    max_width = 0.7,
    custom_fix = nil,
    custom_msg = nil,
    text_hl_follow = false,
    keys = {
      exec_action = "o",
      quit = "q",
      go_action = "g"
    },
  },
  -- finder icons
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  -- finder config
  finder = {
    jump_to = 'p',
    edit = { "o", "<CR>" },
    tabe = "t",
    quit = { "q", "<ESC>" },
  },
  -- show outline
  outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    auto_enter = true,
    auto_preview = false,
    virt_text = '┃',
    keys = {
      jump = "o",
      expand_collapse = "u",
      quit = "q",
    },
    -- auto refresh when change buffer
    auto_refresh = true,
  },
  -- difinition config
  definition = {
    edit = "<S-c>o",
    vsplit = "<S-c>v",
    split = "<S-c>i",
    tabe = "<S-c>t",
    quit = "q",
    close = "<Esc>",
  },
  -- code action config
  code_action = {
    num_shortcut = true,
    keys = {
      -- string | table type
      quit = "q",
      exec = "<CR>",
    },
  },
  request_timeout = 5000,
})

-- Code action
keymap("n", "ga", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- Finder
keymap("n", "gF", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Outline
keymap("n", "go", "<cmd>Lspsaga outline<CR>", { silent = true })

-- Hover Doc
keymap("n", "gh", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Definition
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
keymap("n", "gs", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

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

-- Signature Help
keymap("n", "gS", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { silent = true })

-- Implementation
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })

-- Format
keymap("n", "gf", "<cmd>lua vim.lsp.buf.format()<CR>", { silent = true })
