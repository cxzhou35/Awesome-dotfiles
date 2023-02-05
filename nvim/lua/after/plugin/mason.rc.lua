local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
    PATH = "prepend",
    log_level = vim.log.levels.INFO
})

lspconfig.setup {
    ensure_installed = {
        "clangd", "gopls", "sumneko_lua", "vimls", "jsonls", "pyright"
    }
}
