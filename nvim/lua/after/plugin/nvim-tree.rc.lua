local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

-- recommended settings for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        width = 25,
        mappings = {list = {{key = "u", action = "dir_up"}}}
    },
    renderer = {
        group_empty = false,
        highlight_git = false,
        indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {corner = "└", edge = "│", item = "│", none = " "}
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {file = true, folder = true, folder_arrow = true, git = true},
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = ""
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌"
                }
            }
        }
    },
    filters = {dotfiles = false},
    hijack_directories = {enable = true, auto_open = true}

})
