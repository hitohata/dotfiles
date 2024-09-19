local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"

local servers = {"cssls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  } 
end

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("cargo.toml"),
})

lspconfig.ts_ls.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx"},
  cmd = { "typescript-language-server", "--stdio" }
})


lspconfig.biome.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "typescript",
    "javascriptreact",
    "json",
    "jsonc",
    "typescript.tsx",
    "typescriptreact",
    "astro"
  }
})

