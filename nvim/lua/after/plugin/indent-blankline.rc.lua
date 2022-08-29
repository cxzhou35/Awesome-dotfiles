local status, indentbl = pcall(require, 'indent_blankline')
if (not status) then return end

vim.cmd("autocmd!")
vim.opt.termguicolors = true
vim.cmd("highlight IndentBlanklineIndent1 guifg=#845EC2 gui=nocombine")
vim.cmd("highlight IndentBlanklineIndent2 guifg=#C678DD gui=nocombine")
vim.cmd("highlight IndentBlanklineIndent3 guifg=#B39CD0 gui=nocombine")
vim.cmd("highlight IndentBlanklineIndent4 guifg=#FBEAFF gui=nocombine")
vim.cmd("highlight IndentBlanklineIndent5 guifg=#DBE7ED gui=nocombine")
vim.cmd("highlight IndentBlanklineIndent6 guifg=#ADC5CF gui=nocombine")

indentbl.setup({
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
})
