function nofrils()
	vim.cmd('colorscheme nofrils')
end
vim.api.nvim_create_user_command('Nofrils', nofrils, {})



function nofrils_presentation()
	vim.opt.foldcolumn = "0"

	vim.opt.signcolumn = "no"

	vim.opt.number = false
	vim.opt.relativenumber = false

	vim.api.nvim_set_hl(0, 'Visual', {link = 'nofrils-main-bg'})
end
vim.api.nvim_create_user_command('NofrilsPresentation', nofrils_presentation, {})
