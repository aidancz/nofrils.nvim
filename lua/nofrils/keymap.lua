local nofrils = function()
	vim.cmd('colorscheme nofrils')
end
vim.api.nvim_create_user_command('Nofrils', nofrils, {})



local nofrils_presentation = function()
	vim.opt.foldcolumn = "0"

	vim.opt.signcolumn = "no"

	vim.opt.number = false
	vim.opt.relativenumber = false
end
vim.api.nvim_create_user_command('NofrilsPresentation', nofrils_presentation, {})
