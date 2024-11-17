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

	'color_black_alt',
	'color_white_alt',
}



local M = {}

M.path_cache = vim.fn.stdpath('cache') .. '/xresources.lua'

M.path_xresources = os.getenv("HOME") .. '/.Xresources'

M.update_cache = function()
	if vim.fn.getftime(M.path_cache) < vim.fn.getftime(M.path_xresources)
	-- if the file name can't be found, getftime will return -1, which is desired here
	then
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



M.update_cache()
return dofile(M.path_cache)
