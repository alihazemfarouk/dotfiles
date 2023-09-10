local M = {}

function M.setup()
  require("dap-python").setup "~/.debugpyvenv/debugpy/bin/python"

  require("dap").configurations["python"] = {
    {
      name = "Python: Remote Attach",
      type = "python",
      request = "attach",
      connect = {
        host = "localhost",
        port = 5678,
      },
      cwd = vim.fn.getcwd(),
      justMyCode = false,
      pathMappings = {
        {
          localRoot = vim.fn.getcwd(),
          remoteRoot = "/app",
        },
      },
    },
  }
end

return M
