Nofrils = {}

Nofrils.config = {
	path_xresources = os.getenv('HOME') .. '/.Xresources',
	main = function()
		Nofrils.clear({".*"})
	end,
}

Nofrils.setup = function(config)
	Nofrils.config = vim.tbl_deep_extend('force', Nofrils.config, config or {})
end

Nofrils.clear = require("nofrils/clear")

Nofrils.get_xresources = function() return require("nofrils/xresources") end

return Nofrils
