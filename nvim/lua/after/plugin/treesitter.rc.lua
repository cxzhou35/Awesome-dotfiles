local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    highlight = {enable = true, disable = {}},
    indent = {enable = true, disable = {"python"}},
    ensure_installed = { -- add language server you want here
        "cpp", "rust", "json", "yaml", "markdown", "bash", "lua", "vim", "go",
        "c", "dockerfile", "gitignore"
    },
    autotag = {enable = true},
    auto_install = true
}
