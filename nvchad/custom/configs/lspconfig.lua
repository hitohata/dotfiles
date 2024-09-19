local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("cargo.toml"),
})

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disablesuggestions = true,
    }
  }
}

lspconfig.biome.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "jsavascript",
    "typescript",
    "jsavascriptreact",
    "json",
    "jsonc",
    "typescript.tsx",
    "typescriptreact",
    "astro"
  }
}
