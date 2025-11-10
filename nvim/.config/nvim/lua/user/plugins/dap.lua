return {
  "rcarriga/nvim-dap-ui",

  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },

  keys = {
    { "<leader>db", "<cmd>DapToggleBreakpoint<CR>", desc = "Add breakpoint" },
    { "<leader>dr", "<cmd>DapContinue<CR>",         desc = "Start/Continue" },
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    -- 🔧 Adapter C/C++ avec Mason
    local mason_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb"

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = mason_path,
        args = { "--port", "${port}" },
      },
    }

    -- ⚙️ Config pour C/C++
    dap.configurations.c = {
      {
        name = "Launch C program",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/prog", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        terminal = "integrated",
      },
    }

    dap.configurations.cpp = dap.configurations.c

    -- 🪄 UI
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
  end,
}
