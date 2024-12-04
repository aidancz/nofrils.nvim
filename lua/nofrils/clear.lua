-- https://www.reddit.com/r/neovim/comments/144bkmu/set_all_highlight_groups_to_the_same_color/

return
function(patterns)
	for _, pattern in pairs(patterns) do
		for name, _ in pairs(vim.api.nvim_get_hl(0, {})) do
			if string.find(name, pattern) then
				vim.api.nvim_set_hl(0, name, {})
			end
		end
	end
end
-- https://stackoverflow.com/questions/55108794/what-is-the-difference-between-pairs-and-ipairs-in-lua
