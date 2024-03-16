vim.g["test#strategy"] = "vimux"

local compose_exec = "docker compose exec -u root api pytest"
vim.g["test#python#runner"] = "pytest"
vim.g["test#python#pytest#executable"] = compose_exec

local test_debugging_enabled = false
function TogglePytestDebugging()
  if test_debugging_enabled then
    vim.g["test#python#pytest#executable"] = compose_exec
    test_debugging_enabled = false
    print "Disabled pytest debugging"
  else
    vim.g["test#python#pytest#executable"] =
      "docker compose -f docker-compose.yml -f ~/.dotfiles/.docker-compose-debug-override.yml exec -u root api python -m debugpy --wait-for-client --listen 0.0.0.0:5678 -m pytest"
    test_debugging_enabled = true
    print "Enabled pytest debugging"
  end
end

vim.api.nvim_create_user_command("TogglePytestDebugging", TogglePytestDebugging, {})
