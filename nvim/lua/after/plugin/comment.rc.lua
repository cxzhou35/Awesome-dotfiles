local state, comment = pcall(require, 'Comment')
if (not state) then return end

comment.setup({
    padding = true,
    toggler = {
        ---Line-comment toggle keymap
        line = '<Leader>cc',
        ---Block-comment toggle keymap
        block = 'gb',
    },
})
