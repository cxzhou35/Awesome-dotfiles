vim.cmd("autocmd!")

-- Colortheme

-- vim.cmd[[colorscheme nordfox]]

vim.cmd[[colorscheme nord]]
local theme = vim.g
theme.nord_contrast = true
theme.nord_borders = true
theme.nord_disable_background = true
theme.nord_italic = false
theme.nord_uniform_diff_background = true

local Color, colors, Group, groups, styles = require('colorbuddy').setup()
Color.new('black', '#4a4266')
Color.new('background', '#282c34')
