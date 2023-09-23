local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    },
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Step over"
    },
    ["<leader>Rd"] = {
      "<cmd> RustDebuggable <CR>",
      "Run Rust Debugger"
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require("crates").upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.nomal = {
  n = {
    ["ss"] = {
      ":split<Return><C-w>w",
      "Split window horizontally"
    },
    ["sv"] = {
      ":vsplit<Return><C-w>w",
      "Split window vertically"
    },
    ["sh"] = {
     "<C-w>h",
      "Change active window"
    },
    ["sk"] = {
      "<C-w>k",
      "Change active window"
    },
    ["sj"] = {
      "<C-w>l",
      "Change active window"
    },
    ["sl"] = {
      "<C-w>l",
      "Change active window"
    },
  }
}

return M
