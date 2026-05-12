require("nvchad.configs.lspconfig").defaults()

local zig_lsp = vim.fn.expand("$HOME/.zvm/bin/zls")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config["zls"] = {
  cmd = {zig_lsp},
  capabilities = capabilities,
}

local servers = { "html", "cssls", "rust_analyzer", "stylua", "clangd", "zls" }

-- Enable all LSP servers
vim.lsp.enable(servers)
