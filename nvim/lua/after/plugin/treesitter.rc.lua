local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    highlight = {enable = true, disable = {}},
    indent = {enable = true, disable = {"python"}},
    ensure_installed = {
        "cpp", "rust", "json", "yaml", "markdown", "bash", "lua", "vim",
        "dockerfile", "gitignore"
    },
    autotag = {enable = true},
    auto_install = true
}
