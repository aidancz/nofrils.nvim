local M = {}
local H = {}

M.config = {
	path_xresources = os.getenv("HOME") .. "/.Xresources",
	path_cache = vim.fn.stdpath("cache") .. "/xresources.lua",
	path_cache_md5 = vim.fn.stdpath("cache") .. "/xresources.md5",
	main = function()
		M.clear(".*")
	end,
}

M.setup = function(config)
	M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.clear = function(pattern)
	for name, _ in pairs(vim.api.nvim_get_hl(0, {})) do
	-- https://stackoverflow.com/questions/55108794/what-is-the-difference-between-pairs-and-ipairs-in-lua
		if string.find(name, pattern) then
			vim.api.nvim_set_hl(0, name, {})
		end
	end
end
-- https://www.reddit.com/r/neovim/comments/144bkmu/set_all_highlight_groups_to_the_same_color/

----------------------------------------------------------------

-- https://github.com/nekonako/xresources-nvim/blob/master/lua/xresources.lua
-- https://github.com/martineausimon/nvim-xresources/blob/main/lua/nvim-xresources/system.lua

H.get_xresources_color = function(c)
	local command = io.popen("xrdb -query | grep " .. c .. " -m 1 | cut -f 2")
	local color = command:read("*l")
	return color
end

H.color_name = {
	"foreground",
	"background",
	"color0",
	"color1",
	"color2",
	"color3",
	"color4",
	"color5",
	"color6",
	"color7",
	"color8",
	"color9",
	"color10",
	"color11",
	"color12",
	"color13",
	"color14",
	"color15",
}

M.update_cache = function()

	-- get md5

	local systemobj_md5sum = vim.system({"md5sum", M.config.path_xresources})
	local stdout_md5sum = systemobj_md5sum:wait().stdout

	local systemobj_cut = vim.system({"cut", "-d", " ", "-f", "1"}, {stdin = true})
	systemobj_cut:write(stdout_md5sum)
	systemobj_cut:write(nil)
	local stdout_cut = systemobj_cut:wait().stdout

	local md5 = stdout_cut

	-- get md5_cache

	local file_cache_md5 = io.open(M.config.path_cache_md5, "r")
	local md5_cache
	if file_cache_md5 then
		md5_cache = file_cache_md5:read("*a")
		file_cache_md5:close()
	end

	-- compare md5_cache and md5, if not equal then update md5_cache and xresources_cache

	if md5_cache ~= md5
	then
		local file_cache_md5 = io.open(M.config.path_cache_md5, "w")
		if file_cache_md5 then
			file_cache_md5:write(md5)
			file_cache_md5:close()
		end



		local color_def = {}

		for _, c in ipairs(H.color_name) do
			color_def[c] = H.get_xresources_color(c)
		end

		local file_cache = io.open(M.config.path_cache, "w")
		if file_cache then
			file_cache:write("return\n" .. vim.inspect(color_def))
			file_cache:close()
		end
	end
end

M.get_xresources = function()
	M.update_cache()
	return dofile(M.config.path_cache)
end

----------------------------------------------------------------

return M
