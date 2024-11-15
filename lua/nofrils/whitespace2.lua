-- # module & help

local M = {}
local H = {}

-- # setup

M.setup = function(userconfig)
	M.config = H.setup_config(M.config, userconfig)
	M.create_autocommands()
end

-- # config

M.config = {
	only_in_normal_buffers = true,
}

H.setup_config = function(defaultconfig, userconfig)
	vim.validate({userconfig = {userconfig, 'table', true}})
	if userconfig ~= nil then
		vim.validate({only_in_normal_buffers = {userconfig.only_in_normal_buffers, 'boolean', true}})
	end
	mergedconfig = vim.tbl_deep_extend('force', defaultconfig, userconfig or {})
	return mergedconfig
end

H.get_config = function(config)
	return vim.tbl_deep_extend('force', M.config, vim.b.nofrilswhsp_config or {}, config or {})
end

-- # autocmd

M.create_autocommands = function()
	local gr = vim.api.nvim_create_augroup('nofrilswhsp', {clear = true})
	local au = function(event, pattern, callback)
		vim.api.nvim_create_autocmd(
			event,
			{
				group = gr,
				pattern = pattern,
				callback = callback,
			}
		)
	end

	au('ColorScheme', '*', M.create_default_hl)

	au({'WinEnter', 'BufEnter'}, '*',
		function()
			local a = H.get_config().only_in_normal_buffers
			local b = H.is_buffer_normal()
			if (not a) or (a and b) then
				M.highlight()
			end
		end)

	au({'WinLeave', 'BufLeave'}, '*', M.unhighlight)

	au('InsertEnter', '*', M.highlight_insert)

	au('InsertLeave', '*', M.highlight)

	if H.get_config().only_in_normal_buffers then
		au('OptionSet', 'buftype',
			function()
				if vim.v.option_new == '' then
					M.highlight()
				else
					M.unhighlight()
				end
			end)
	end
end

M.create_default_hl = function()
	vim.api.nvim_set_hl(0, 'nofrilswhsp', {default = true, link = 'nofrils-red-bg'})
end

M.highlight = function()
	M.unhighlight()
	vim.b.nofrilsmatchid = vim.fn.matchadd('nofrilswhsp', [[\s\+$]])
end

M.highlight_insert = function()
	M.unhighlight()
	vim.b.nofrilsmatchid = vim.fn.matchadd('nofrilswhsp', [[\s\+\%#\@<!$]])
end

M.unhighlight = function()
	pcall(vim.fn.matchdelete, vim.b.nofrilsmatchid)
	-- use `pcall` because there is an error if match id is not present
end

H.is_buffer_normal = function(buf_id) return vim.bo[buf_id or 0].buftype == '' end



M.setup({})
