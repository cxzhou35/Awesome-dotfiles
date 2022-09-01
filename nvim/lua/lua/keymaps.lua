local keymap = vim.keymap

-- Leader key
vim.g.mapleader = '\\'

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Split window
keymap.set('n', 's', '<nop>')
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
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

-- Cursor move
keymap.set('n', '<S-h>', '^')
keymap.set('n', '<S-j>', '5j')
keymap.set('n', '<S-k>', '5k')
keymap.set('n', '<S-l>', '$')

-- No highlight
keymap.set('', '<C-h>', ':noh<CR>')

-- Undo
keymap.set('n', '<C-z>', ':u<CR>')

-- Dashboard
keymap.set('n', ';n', ':DashboardNewFile<CR>')

-- File
keymap.set('n', '<S-s>', ':wa<CR>')
keymap.set('n', 'fq', ':q!<CR>')
keymap.set('n', '<S-q>', ':q!<CR>')
keymap.set('n', 'fwq', ':wqa<CR>')

-- Nvim-tree
keymap.set('n', '<F2>', ':NvimTreeFindFileToggle<CR>')

-- Wildfire
keymap.set('', '<Space>', '<Plug>(wildfire-fuel)')

-- Markdown priview
keymap.set('', '<C-m>', '<Plug>MarkdownPreviewToggle')

-- Highlight string
vim.api.nvim_set_keymap(
    "v",
    "zh",
    ":<c-u>HSHighlight 1<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "v",
    "zn",
    ":<c-u>HSRmHighlight<CR>",
    {
        noremap = true,
        silent = true
    }
)


