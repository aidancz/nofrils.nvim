local M = {}

M.config = {
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

-- # xrdb (x server resource database utility)

-- https://github.com/nekonako/xresources-nvim/blob/master/lua/xresources.lua
-- https://github.com/martineausimon/nvim-xresources/blob/main/lua/nvim-xresources/system.lua

M.get_xrdb_query = function()
	local str = io.popen("xrdb -query", "r"):read("*a")
	local lis = vim.split(str, "\n", {trimempty = true})
	local tbl = {}
	for _, i in ipairs(lis) do
		local kv = vim.split(i, ":\t")
		local k = kv[1]
		local v = kv[2]
		tbl[k] = v
	end
	return tbl
end

M.color = {
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

M.tbl_find = function(t, pattern)
	for k, v in pairs(t) do
		if string.find(k, pattern) then
			return v
		end
	end
	return nil
end

M.get_xrdb_color = function()
	local xrdb_query = M.get_xrdb_query()
	local xrdb_color = {}
	for _, color in ipairs(M.color) do
		local pattern = color .. "$"
		xrdb_color[color] = M.tbl_find(xrdb_query, pattern)
	end
	return xrdb_color
end

return M
