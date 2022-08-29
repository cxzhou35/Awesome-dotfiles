local state, terminal = pcall(require, 'toggleterm')
if (not state) then return end

local Terminal  = require('toggleterm.terminal').Terminal

-- Lazygit
local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "single",
    },
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<C-l>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- Btop
local btop = Terminal:new({
    cmd = "btop",
    hidden = true,
    direction = "float",
    float_opts = {
        border = "single",
    },
})

function _btop_toggle()
  btop:toggle()
end

vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>lua _btop_toggle()<CR>", {noremap = true, silent = true})

