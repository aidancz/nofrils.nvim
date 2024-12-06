-- https://github.com/nekonako/xresources-nvim/blob/master/lua/xresources.lua
-- https://github.com/martineausimon/nvim-xresources/blob/main/lua/nvim-xresources/system.lua

local H = {}

H.get_xresources_color = function(c)
	local command = io.popen('xrdb -query | grep ' .. c .. ' -m 1 | cut -f 2')
	local color = command:read("*l")
	return color
end

H.color_name = {
	'foreground',
	'background',
	'color0',
	'color1',
	'color2',
	'color3',
	'color4',
	'color5',
	'color6',
	'color7',
	'color8',
	'color9',
	'color10',
	'color11',
	'color12',
	'color13',
	'color14',
	'color15',

	'color_custom0',
	'color_custom1',
	'color_custom2',
	'color_custom3',
	'color_custom4',
	'color_custom5',
	'color_custom6',
	'color_custom7',
	'color_custom8',
	'color_custom9',
	'color_custom10',
	'color_custom11',
	'color_custom12',
	'color_custom13',
	'color_custom14',
	'color_custom15',
}

----------------------------------------------------------------

local M = {}

M.setup = function(config)
	M.path_xresources = config.path_xresources
	M.path_cache = vim.fn.stdpath('cache') .. '/xresources.lua'
	M.path_cache_md5 = vim.fn.stdpath('cache') .. '/xresources.md5'

	M.update_cache()

	return dofile(M.path_cache)
end

M.update_cache = function()
	local systemobj_md5sum = vim.system({"md5sum", M.path_xresources})
	local stdout_md5sum = systemobj_md5sum:wait().stdout

	local systemobj_cut = vim.system({"cut", "-d", " ", "-f", "1"}, {stdin = true})
	systemobj_cut:write(stdout_md5sum)
	systemobj_cut:write(nil)
	local stdout_cut = systemobj_cut:wait().stdout

	local md5 = stdout_cut



	local file_cache_md5 = io.open(M.path_cache_md5, "r")
	local md5_cache
	if file_cache_md5 then
		md5_cache = file_cache_md5:read("*a")
		file_cache_md5:close()
	end



	if md5_cache ~= md5
	then
		local file_cache_md5 = io.open(M.path_cache_md5, "w")
		if file_cache_md5 then
			file_cache_md5:write(md5)
			file_cache_md5:close()
		end



		local color_def = {}

		for _, c in ipairs(H.color_name)
		do
			color_def[c] = H.get_xresources_color(c)
		end

		local file_cache = io.open(M.path_cache, "w")
		if file_cache then
			file_cache:write("return\n" .. vim.inspect(color_def))
			file_cache:close()
		end
	end
end

----------------------------------------------------------------

return M
