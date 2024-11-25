-- # option

vim.opt.background = 'dark'



-- # clear

local highlights = vim.api.nvim_get_hl(0, {})
for name, _ in pairs(highlights) do
	vim.api.nvim_set_hl(0, name, {})
end



-- # set

-- ## highlight group def

local x = require("nofrils/xresources")
-- xresources colors for `termguicolors`

vim.api.nvim_set_hl(0, 'Normal', {ctermbg = 0, ctermfg = 7, bg = x.color0, fg = x.color7})
-- cterm	color terminal

vim.api.nvim_set_hl(0, 'nofrils-black',      {ctermbg = 0, ctermfg = 0, bg = x.color0, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-red',        {ctermbg = 0, ctermfg = 1, bg = x.color0, fg = x.color1})
vim.api.nvim_set_hl(0, 'nofrils-green',      {ctermbg = 0, ctermfg = 2, bg = x.color0, fg = x.color2})
vim.api.nvim_set_hl(0, 'nofrils-yellow',     {ctermbg = 0, ctermfg = 3, bg = x.color0, fg = x.color3})
vim.api.nvim_set_hl(0, 'nofrils-blue',       {ctermbg = 0, ctermfg = 4, bg = x.color0, fg = x.color4})
vim.api.nvim_set_hl(0, 'nofrils-magenta',    {ctermbg = 0, ctermfg = 5, bg = x.color0, fg = x.color5})
vim.api.nvim_set_hl(0, 'nofrils-cyan',       {ctermbg = 0, ctermfg = 6, bg = x.color0, fg = x.color6})
vim.api.nvim_set_hl(0, 'nofrils-white',      {ctermbg = 0, ctermfg = 7, bg = x.color0, fg = x.color7})
vim.api.nvim_set_hl(0, 'nofrils-black-bg',   {ctermbg = 0, ctermfg = 0, bg = x.color0, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-red-bg',     {ctermbg = 1, ctermfg = 0, bg = x.color1, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-green-bg',   {ctermbg = 2, ctermfg = 0, bg = x.color2, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-yellow-bg',  {ctermbg = 3, ctermfg = 0, bg = x.color3, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-blue-bg',    {ctermbg = 4, ctermfg = 0, bg = x.color4, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-magenta-bg', {ctermbg = 5, ctermfg = 0, bg = x.color5, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-cyan-bg',    {ctermbg = 6, ctermfg = 0, bg = x.color6, fg = x.color0})
vim.api.nvim_set_hl(0, 'nofrils-white-bg',   {ctermbg = 7, ctermfg = 0, bg = x.color7, fg = x.color0})

vim.api.nvim_set_hl(0, 'nofrils-reverse',    {reverse = true})



-- ## highlight group link: builtin
-- `:h highlight-groups`

vim.api.nvim_set_hl(0, 'Whitespace',   {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'SpecialKey',   {link = 'nofrils-yellow-bg'})
vim.api.nvim_set_hl(0, 'NonText',      {link = 'nofrils-yellow'})

vim.api.nvim_set_hl(0, 'Cursor',       {link = 'nofrils-white-bg'})
vim.api.nvim_set_hl(0, 'TermCursor',   {link = 'nofrils-white-bg'})
vim.api.nvim_set_hl(0, 'Visual',       {link = 'nofrils-green-bg'})
vim.api.nvim_set_hl(0, 'CursorLine',   {link = 'nofrils-green-bg'})
vim.api.nvim_set_hl(0, 'CursorColumn', {link = 'nofrils-green-bg'})
vim.api.nvim_set_hl(0, 'MatchParen',   {link = 'nofrils-green-bg'})

vim.api.nvim_set_hl(0, 'DiffAdd',      {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, 'DiffChange',   {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'DiffDelete',   {link = 'nofrils-red'})
vim.api.nvim_set_hl(0, 'DiffText',     {link = 'nofrils-blue'})

vim.api.nvim_set_hl(0, 'Search',       {link = 'nofrils-cyan-bg'})
vim.api.nvim_set_hl(0, 'CurSearch',    {link = 'nofrils-magenta-bg'})
vim.api.nvim_set_hl(0, 'IncSearch',    {link = 'nofrils-white-bg'})

vim.api.nvim_set_hl(0, 'LineNr',       {link = 'nofrils-white'})
vim.api.nvim_set_hl(0, 'LineNrAbove',  {link = 'nofrils-white'})
vim.api.nvim_set_hl(0, 'LineNrBelow',  {link = 'nofrils-white'})

vim.api.nvim_set_hl(0, 'PmenuSel',     {link = 'nofrils-white-bg'})
vim.api.nvim_set_hl(0, 'StatusLine',   {link = 'nofrils-white'})

vim.api.nvim_set_hl(0, 'WarningMsg',   {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'ErrorMsg',     {link = 'nofrils-red'})

vim.api.nvim_set_hl(0, 'Folded',       {link = 'nofrils-yellow'})



-- ## highlight group link: syntax suggested
-- `:h group-name`

vim.api.nvim_set_hl(0, 'Comment', {link = 'nofrils-blue'})
vim.api.nvim_set_hl(0, 'Error',   {link = 'nofrils-red-bg'})
vim.api.nvim_set_hl(0, 'Added',   {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, 'Changed', {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'Removed', {link = 'nofrils-red'})



-- ## highlight group link: syntax treesitter
-- `:h treesitter-highlight-groups`

vim.api.nvim_set_hl(0, '@comment',          {link = 'nofrils-blue'})
vim.api.nvim_set_hl(0, '@diff.delta',       {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, '@diff.minus',       {link = 'nofrils-red'})
vim.api.nvim_set_hl(0, '@diff.plus',        {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, '@markup.heading.1', {link = 'nofrils-red'})
vim.api.nvim_set_hl(0, '@markup.heading.2', {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, '@markup.heading.3', {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, '@markup.heading.4', {link = 'nofrils-blue'})
vim.api.nvim_set_hl(0, '@markup.heading.5', {link = 'nofrils-magenta'})
vim.api.nvim_set_hl(0, '@markup.heading.6', {link = 'nofrils-cyan'})
vim.api.nvim_set_hl(0, '@markup.link',      {link = 'nofrils-cyan'})
vim.api.nvim_set_hl(0, '@markup.raw',       {link = 'nofrils-blue'})



-- ## highlight group link: syntax misc

vim.api.nvim_set_hl(0, 'manBold',      {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'manItalic',    {link = 'nofrils-blue'})
vim.api.nvim_set_hl(0, 'manUnderline', {link = 'nofrils-cyan'})



--------------------------------------------------------------------------------------------------------------------------------



-- # keymap

require("nofrils/keymap")



-- # whitespace

-- https://vim.fandom.com/wiki/Highlight_unwanted_spaces
-- https://gist.github.com/pironim/3722006
-- https://github.com/echasnovski/mini.trailspace/blob/main/lua/mini/trailspace.lua

-- comment with --[=[ and --]=]

require("nofrils/whitespace")

-- test regexp
--[=[
vim.api.nvim_create_autocmd(
	{'CursorMoved', 'CursorMovedI'}, {
	group = nofrils,
	pattern = {'*'},
	callback = function()
		vim.fn.matchadd('test', [[\s\+\%#\@<!$]])
	end,
	})
vim.api.nvim_set_hl(0, 'test', {link = 'nofrils-red-bg'})
--]=]
