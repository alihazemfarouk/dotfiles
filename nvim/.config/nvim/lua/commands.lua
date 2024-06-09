local api = vim.api

-- Lazy shift finger commands
api.nvim_create_user_command('W', 'write', {})
api.nvim_create_user_command('Wa', 'wa', {})
api.nvim_create_user_command('WA', 'wa', {})
api.nvim_create_user_command('Wq', 'wq', {})
api.nvim_create_user_command('WQ', 'wq', {})
api.nvim_create_user_command('Wqa', 'wqa', {})
api.nvim_create_user_command('WQa', 'wqa', {})
api.nvim_create_user_command('Q', 'quit', {})
api.nvim_create_user_command('QA', 'quitall', {})
api.nvim_create_user_command('Qa', 'quitall', {})
