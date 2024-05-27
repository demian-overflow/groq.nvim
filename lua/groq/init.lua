local M = {}

function M.default_config()
	return {
		model = "llama3",
		url = "http://127.0.0.1:11434",
	}
end

M.config = M.default_config()


function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
    vim.api.nvim_echo({{'Setting up...', 'Normal'}}, true, {})
    vim.api.nvim_command('command! TestPlugin echo "Plugin is installed"')
end