local keymap = vim.keymap

-- Leader key
vim.g.mapleader = '\\'

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
-- vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Split window
keymap.set('n', 's', '<nop>')
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})

-- Change window
keymap.set('n', '<Space>w', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Tab
keymap.set('n', '<C-n>', ':tabnew<Return>')
keymap.set('n', '<C-j>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<C-k>', '<Cmd>BufferLineCyclePrev<CR>', {})
keymap.set('n', '<C-q>', ':bdelete<CR>')

-- Indent
keymap.set('v', '>', '>gv')
keymap.set('v', '<', '<gv')

-- Move cursor
keymap.set('n', '<S-h>', '^')
keymap.set('n', '<S-j>', '5j')
keymap.set('n', '<S-k>', '5k')
keymap.set('n', '<S-l>', 'g_')
keymap.set('v', '<S-h>', '^')
keymap.set('v', '<S-j>', '5j')
keymap.set('v', '<S-k>', '5k')
keymap.set('v', '<S-l>', 'g_')

-- Number
keymap.set('v', '+', 'g<C-a>')
keymap.set('v', '-', 'g<C-x>')

-- Sort
keymap.set('v', '<leader>s', ':sort<CR>')
keymap.set('v', '<leader>i', ':sort!<CR>')

-- No highlight
keymap.set('', '<C-h>', ':noh<CR>')

-- Undo
keymap.set('n', '<S-u>', ':u<CR>')

-- File
keymap.set('n', '<C-s>', ':wa<CR>')
keymap.set('n', '<S-s>', '<nop>')
keymap.set('n', 'fq', ':q!<CR>')
keymap.set('n', 'fwq', ':wqa<CR>')

-- Nvim-tree
keymap.set('n', '<F2>', ':NvimTreeFindFileToggle<CR>')

-- Match
keymap.set('', 'm', '%')

-- Wildfire
keymap.set('', '<Space>', '<Plug>(wildfire-fuel)')

-- Surround
keymap.set('n', 'vw', 'vaw')
keymap.set('n', 'vp', 'vap')
keymap.set('n', 'vb', 'vab')

-- Picgo
keymap.set('', '<C-u>', ':UploadClipboard<CR>')

-- Markdown Preview
keymap.set('', '<C-m>', '<Plug>MarkdownPreviewToggle')
keymap.set('', '<C-t>', ':Toc<CR>')

-- Lspsga
keymap.set('', '<S-t>', ':LspStop<CR>')
keymap.set('', '<S-a>', ':LspStart<CR>')

-- Lightspeed jump
keymap.set('n', 'q', '<nop>')
keymap.set('n', 'qh', '<Plug>Lightspeed_s')
keymap.set('n', 'ql', '<Plug>Lightspeed_S')

-- Noice history
keymap.set("n", "<leader>nh", function() require("noice").cmd("history") end)

keymap.set('n', '<space>e', vim.diagnostic.open_float,
           {silent = true, noremap = true})

-- Highlight string
vim.api.nvim_set_keymap("v", "zh", ":<c-u>HSHighlight 1<CR>",
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap("v", "zn", ":<c-u>HSRmHighlight<CR>",
                        {noremap = true, silent = true})
