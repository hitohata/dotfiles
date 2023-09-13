local on_attach = require("plugins.configs.lspconfig").on_attach
local rt = require("rust-tools")

local opts = {
  server = {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = function (_, bufnr)
      vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
  dap = {
    adapter = {
      type = "executable",
      command = "/usr/bin/lldb-vscode-14",
      name = "rt_lldb"
    }
  }
}

return opts
