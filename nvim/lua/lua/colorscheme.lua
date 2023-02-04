local theme = vim.g

-- Colortheme
-- vim.cmd [[colorscheme nordfox]]

theme.nord_contrast = true
theme.nord_borders = true
theme.nord_disable_background = true
theme.nord_italic = false
theme.nord_uniform_diff_background = true
theme.nord_bold = true

vim.cmd [[colorscheme nord]]

local Color, _, _, _, _ = require('colorbuddy').setup()
Color.new('background', '#8491c3')
