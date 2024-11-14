local nofrils_augroup = vim.api.nvim_create_augroup('nofrils', {clear = true})

vim.api.nvim_create_autocmd(
	{'VimEnter', 'WinEnter'}, {
	group = nofrils_augroup,
	pattern = {'*'},
	callback = function()
		if vim.w.nofrils_match_id_whitespace ~= nil then
			vim.fn.matchdelete(vim.w.nofrils_match_id_whitespace)
		end
		vim.w.nofrils_match_id_whitespace = vim.fn.matchadd('trail', [[\s\+$]])
	end,
	})

vim.api.nvim_create_autocmd(
	'InsertEnter', {
	group = nofrils_augroup,
	pattern = {'*'},
	callback = function()
		vim.fn.matchdelete(vim.w.nofrils_match_id_whitespace)
		vim.w.nofrils_match_id_whitespace = vim.fn.matchadd('trail', [[\s\+\%#\@<!$]])
	end,
	})

vim.api.nvim_create_autocmd(
	'InsertLeave', {
	group = nofrils_augroup,
	pattern = {'*'},
	callback = function()
		vim.fn.matchdelete(vim.w.nofrils_match_id_whitespace)
		vim.w.nofrils_match_id_whitespace = vim.fn.matchadd('trail', [[\s\+$]])
	end,
	})

vim.api.nvim_set_hl(0, 'trail', {link = 'nofrils-yellow-bg'})

function nofrils_fade_whitespace()
	vim.api.nvim_set_hl(0, 'trail', {link = 'nofrils-default'})
end
vim.api.nvim_create_user_command('NofrilsFadeWhitespace', nofrils_fade_whitespace, {})
