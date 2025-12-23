return {
  "rcarriga/nvim-dap-ui",

  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },

  keys = {
    { "<leader>db", "<cmd>DapToggleBreakpoint<CR>",         desc = "Add breakpoint" },
    { "<leader>dr", "<cmd>DapContinue<CR>",                 desc = "Start/Continue" },
    { "<leader>do", "<cmd>DapStepOver<CR>",                 desc = "Step over" },
    { "<leader>di", "<cmd>DapStepInto<CR>",                 desc = "Step into" },
    { "<leader>du", "<cmd>DapStepOut<CR>",                  desc = "Step out" },
    { "<leader>dq", "<cmd>DapTerminate<CR>",                desc = "Quit debug session" },
    { "<leader>de", function() require("dapui").eval() end, desc = "Evaluate expression" },
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

    -- 🪄 UI (avec layout complet)
    dapui.setup({
      layouts = {
        {
          elements = {
            { id = "scopes",      size = 0.35 },
            { id = "breakpoints", size = 0.15 },
            { id = "stacks",      size = 0.25 },
            { id = "watches",     size = 0.25 },
          },
          size = 40,
          position = "left",
        },
        {
          elements = {
            "repl",
            "console",
          },
          size = 10,
          position = "bottom",
        },
      },
      controls = {
        enabled = true,
        element = "repl",
      },
      floating = {
        border = "rounded",
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
    })

    -- 🔄 Auto open/close dap-ui
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- 💡 Message d’aide pour savoir comment ajouter des expressions
    vim.api.nvim_create_user_command("DapInfo", function()
      print("💡 Pour ajouter une expression : place ton curseur sur une variable et tape <leader>de")
    end, {})
  end,
}
