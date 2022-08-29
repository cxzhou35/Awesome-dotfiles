local status, n = pcall(require, "nord")
if (not status) then return end

local set = vim.g
set.nord_contrast = true
set.nord_borders = false
set.nord_disable_background = true
set.nord_italic = false
set.nord_uniform_diff_background = true

local Color, colors, Group, groups, styles = require('colorbuddy').setup()
Color.new('black', '#000000')
Color.new('background', '#282c34')

