local M = {}

M.keys = {
  {
    "<leader>ds",
    function()
      require("dap").continue()
    end,
    desc = "Start",
  },
  {
    "<leader>dt",
    function()
      require("dap").toggle_breakpoint()
    end,
    desc = "Toggle Breakpoint",
  },
  {
    "<leader>dc",
    function()
      require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
    end,
    desc = "Toggle Breakpoint",
  },
}

M.setup = function(plugin, opts)
  require("nvim-dap-virtual-text").setup {
    commented = true,
  }

  local dap, dapui = require "dap", require "dapui"
  dapui.setup {}

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  -- set up debugger
  for k, _ in pairs(opts.setup) do
    opts.setup[k](plugin, opts)
  end
end

return M
