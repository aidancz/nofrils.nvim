M = {}

M.config = {
	path_xresources = os.getenv('HOME') .. '/.Xresources',
	main = function()
		require('nofrils').clear({'.*'})
	end,
}

M.setup = function(config)
	M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

M.clear = require('nofrils/clear').setup()

M.get_xresources = function() return require('nofrils/xresources').setup(M.config) end

return M
