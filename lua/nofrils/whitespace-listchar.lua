local nofrilswhsp = {}
local h = {}

nofrilswhsp.setup = function(userconfig)
	nofrilswhsp.config = h.setup_config(nofrilswhsp.config, userconfig)
	nofrilswhsp.create_autocommands()
end

nofrilswhsp.config = {
	only_in_normal_buffers = true,
}

h.setup_config = function(defaultconfig, userconfig)
	vim.validate({userconfig = {userconfig, 'table', true}})
	if userconfig ~= nil then
		vim.validate({only_in_normal_buffers = {userconfig.only_in_normal_buffers, 'boolean', true}})
	end
	mergedconfig = vim.tbl_deep_extend('force', defaultconfig, userconfig or {})
	return mergedconfig
end

h.get_config = function(config)
	return vim.tbl_deep_extend('force', nofrilswhsp.config, vim.b.nofrilswhsp_config or {}, config or {})
end

nofrilswhsp.create_autocommands = function()
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

	au('ColorScheme', '*', nofrilswhsp.create_default_hl)

	au({'WinEnter', 'BufEnter'}, '*',
		function()
			local a = h.get_config().only_in_normal_buffers
			local b = h.is_buffer_normal()
			if (not a) or (a and b) then
				nofrilswhsp.highlight()
			end
		end)

	au({'WinLeave', 'BufLeave'}, '*', nofrilswhsp.unhighlight)

	au('InsertEnter', '*', nofrilswhsp.highlight_insert)

	au('InsertLeave', '*', nofrilswhsp.highlight)

	if h.get_config().only_in_normal_buffers then
		au('OptionSet', 'buftype',
			function()
				if vim.v.option_new == '' then
					nofrilswhsp.highlight()
				else
					nofrilswhsp.unhighlight()
				end
			end)
	end
end

nofrilswhsp.create_default_hl = function()
	vim.api.nvim_set_hl(0, 'nofrilswhsp', {default = true, link = 'nofrils-red'})
end

nofrilswhsp.highlight = function()
	nofrilswhsp.unhighlight()
	vim.b.nofrilsmatchid = vim.fn.matchadd('nofrilswhsp', [[\s\+$]])
end

nofrilswhsp.highlight_insert = function()
	nofrilswhsp.unhighlight()
	vim.b.nofrilsmatchid = vim.fn.matchadd('nofrilswhsp', [[\s\+\%#\@<!$]])
end

nofrilswhsp.unhighlight = function()
	pcall(vim.fn.matchdelete, vim.b.nofrilsmatchid)
	-- use `pcall` because there is an error if match id is not present
end

h.is_buffer_normal = function(buf_id) return vim.bo[buf_id or 0].buftype == '' end



nofrilswhsp.setup({})
