--  option
vim.opt.termguicolors = false
vim.opt.background = 'dark'

--  highlight group def
vim.api.nvim_set_hl(0, 'Normal', {ctermbg = 0, ctermfg = 15})
-- cterm	color terminal

vim.api.nvim_set_hl(0, 'nofrils-default',    {ctermbg = 0,      ctermfg = 15})
vim.api.nvim_set_hl(0, 'nofrils-reverse',    {ctermbg = 15,     ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-shadow',     {ctermbg = 'NONE', ctermfg = 7})
vim.api.nvim_set_hl(0, 'nofrils-highlight',  {ctermbg = 8,      ctermfg = 'NONE'})
vim.api.nvim_set_hl(0, 'nofrils-red',        {ctermbg = 'NONE', ctermfg = 1})
vim.api.nvim_set_hl(0, 'nofrils-green',      {ctermbg = 'NONE', ctermfg = 2})
vim.api.nvim_set_hl(0, 'nofrils-yellow',     {ctermbg = 'NONE', ctermfg = 3})
vim.api.nvim_set_hl(0, 'nofrils-blue',       {ctermbg = 'NONE', ctermfg = 4})
vim.api.nvim_set_hl(0, 'nofrils-magenta',    {ctermbg = 'NONE', ctermfg = 5})
vim.api.nvim_set_hl(0, 'nofrils-cyan',       {ctermbg = 'NONE', ctermfg = 6})
vim.api.nvim_set_hl(0, 'nofrils-red-bg',     {ctermbg = 1,      ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-green-bg',   {ctermbg = 2,      ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-yellow-bg',  {ctermbg = 3,      ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-blue-bg',    {ctermbg = 4,      ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-magenta-bg', {ctermbg = 5,      ctermfg = 0})
vim.api.nvim_set_hl(0, 'nofrils-cyan-bg',    {ctermbg = 6,      ctermfg = 0})

--  clear (:h highlight-groups) (without Normal) {{{
vim.api.nvim_set_hl(0, 'ColorColumn',    {})
vim.api.nvim_set_hl(0, 'Conceal',        {})
vim.api.nvim_set_hl(0, 'CurSearch',      {})
vim.api.nvim_set_hl(0, 'Cursor',         {})
vim.api.nvim_set_hl(0, 'lCursor',        {})
vim.api.nvim_set_hl(0, 'CursorIM',       {})
vim.api.nvim_set_hl(0, 'CursorColumn',   {})
vim.api.nvim_set_hl(0, 'CursorLine',     {})
vim.api.nvim_set_hl(0, 'Directory',      {})
vim.api.nvim_set_hl(0, 'DiffAdd',        {})
vim.api.nvim_set_hl(0, 'DiffChange',     {})
vim.api.nvim_set_hl(0, 'DiffDelete',     {})
vim.api.nvim_set_hl(0, 'DiffText',       {})
vim.api.nvim_set_hl(0, 'EndOfBuffer',    {})
vim.api.nvim_set_hl(0, 'TermCursor',     {})
vim.api.nvim_set_hl(0, 'TermCursorNC',   {})
vim.api.nvim_set_hl(0, 'ErrorMsg',       {})
vim.api.nvim_set_hl(0, 'WinSeparator',   {})
vim.api.nvim_set_hl(0, 'Folded',         {})
vim.api.nvim_set_hl(0, 'FoldColumn',     {})
vim.api.nvim_set_hl(0, 'SignColumn',     {})
vim.api.nvim_set_hl(0, 'IncSearch',      {})
vim.api.nvim_set_hl(0, 'Substitute',     {})
vim.api.nvim_set_hl(0, 'LineNr',         {})
vim.api.nvim_set_hl(0, 'LineNrAbove',    {})
vim.api.nvim_set_hl(0, 'LineNrBelow',    {})
vim.api.nvim_set_hl(0, 'CursorLineNr',   {})
vim.api.nvim_set_hl(0, 'CursorLineFold', {})
vim.api.nvim_set_hl(0, 'CursorLineSign', {})
vim.api.nvim_set_hl(0, 'MatchParen',     {})
vim.api.nvim_set_hl(0, 'ModeMsg',        {})
vim.api.nvim_set_hl(0, 'MsgArea',        {})
vim.api.nvim_set_hl(0, 'MsgSeparator',   {})
vim.api.nvim_set_hl(0, 'MoreMsg',        {})
vim.api.nvim_set_hl(0, 'NonText',        {})
vim.api.nvim_set_hl(0, 'Normal',         {})
vim.api.nvim_set_hl(0, 'NormalFloat',    {})
vim.api.nvim_set_hl(0, 'FloatBorder',    {})
vim.api.nvim_set_hl(0, 'FloatTitle',     {})
vim.api.nvim_set_hl(0, 'FloatFooter',    {})
vim.api.nvim_set_hl(0, 'NormalNC',       {})
vim.api.nvim_set_hl(0, 'Pmenu',          {})
vim.api.nvim_set_hl(0, 'PmenuSel',       {})
vim.api.nvim_set_hl(0, 'PmenuKind',      {})
vim.api.nvim_set_hl(0, 'PmenuKindSel',   {})
vim.api.nvim_set_hl(0, 'PmenuExtra',     {})
vim.api.nvim_set_hl(0, 'PmenuExtraSel',  {})
vim.api.nvim_set_hl(0, 'PmenuSbar',      {})
vim.api.nvim_set_hl(0, 'PmenuThumb',     {})
vim.api.nvim_set_hl(0, 'Question',       {})
vim.api.nvim_set_hl(0, 'QuickFixLine',   {})
vim.api.nvim_set_hl(0, 'Search',         {})
vim.api.nvim_set_hl(0, 'SnippetTabstop', {})
vim.api.nvim_set_hl(0, 'SpecialKey',     {})
vim.api.nvim_set_hl(0, 'SpellBad',       {})
vim.api.nvim_set_hl(0, 'SpellCap',       {})
vim.api.nvim_set_hl(0, 'SpellLocal',     {})
vim.api.nvim_set_hl(0, 'SpellRare',      {})
vim.api.nvim_set_hl(0, 'StatusLine',     {})
vim.api.nvim_set_hl(0, 'StatusLineNC',   {})
vim.api.nvim_set_hl(0, 'TabLine',        {})
vim.api.nvim_set_hl(0, 'TabLineFill',    {})
vim.api.nvim_set_hl(0, 'TabLineSel',     {})
vim.api.nvim_set_hl(0, 'Title',          {})
vim.api.nvim_set_hl(0, 'Visual',         {})
vim.api.nvim_set_hl(0, 'VisualNOS',      {})
vim.api.nvim_set_hl(0, 'WarningMsg',     {})
vim.api.nvim_set_hl(0, 'Whitespace',     {})
vim.api.nvim_set_hl(0, 'WildMenu',       {})
vim.api.nvim_set_hl(0, 'WinBar',         {})
vim.api.nvim_set_hl(0, 'WinBarNC',       {})
--- }}}

--  clear (:h group-name) {{{
vim.api.nvim_set_hl(0, 'Comment',        {})
vim.api.nvim_set_hl(0, 'Constant',       {})
vim.api.nvim_set_hl(0, 'String',         {})
vim.api.nvim_set_hl(0, 'Character',      {})
vim.api.nvim_set_hl(0, 'Number',         {})
vim.api.nvim_set_hl(0, 'Boolean',        {})
vim.api.nvim_set_hl(0, 'Float',          {})
vim.api.nvim_set_hl(0, 'Identifier',     {})
vim.api.nvim_set_hl(0, 'Function',       {})
vim.api.nvim_set_hl(0, 'Statement',      {})
vim.api.nvim_set_hl(0, 'Conditional',    {})
vim.api.nvim_set_hl(0, 'Repeat',         {})
vim.api.nvim_set_hl(0, 'Label',          {})
vim.api.nvim_set_hl(0, 'Operator',       {})
vim.api.nvim_set_hl(0, 'Keyword',        {})
vim.api.nvim_set_hl(0, 'Exception',      {})
vim.api.nvim_set_hl(0, 'PreProc',        {})
vim.api.nvim_set_hl(0, 'Include',        {})
vim.api.nvim_set_hl(0, 'Define',         {})
vim.api.nvim_set_hl(0, 'Macro',          {})
vim.api.nvim_set_hl(0, 'PreCondit',      {})
vim.api.nvim_set_hl(0, 'Type',           {})
vim.api.nvim_set_hl(0, 'StorageClass',   {})
vim.api.nvim_set_hl(0, 'Structure',      {})
vim.api.nvim_set_hl(0, 'Typedef',        {})
vim.api.nvim_set_hl(0, 'Special',        {})
vim.api.nvim_set_hl(0, 'SpecialChar',    {})
vim.api.nvim_set_hl(0, 'Tag',            {})
vim.api.nvim_set_hl(0, 'Delimiter',      {})
vim.api.nvim_set_hl(0, 'SpecialComment', {})
vim.api.nvim_set_hl(0, 'Debug',          {})
vim.api.nvim_set_hl(0, 'Underlined',     {})
vim.api.nvim_set_hl(0, 'Ignore',         {})
vim.api.nvim_set_hl(0, 'Error',          {})
vim.api.nvim_set_hl(0, 'Todo',           {})
vim.api.nvim_set_hl(0, 'Added',          {})
vim.api.nvim_set_hl(0, 'Changed',        {})
vim.api.nvim_set_hl(0, 'Removed',        {})
--- }}}

--  set   (:h highlight-groups) (without Normal)
vim.api.nvim_set_hl(0, 'SpecialKey',   {link = 'nofrils-yellow-bg'})
vim.api.nvim_set_hl(0, 'NonText',      {link = 'nofrils-shadow'})
vim.api.nvim_set_hl(0, 'Whitespace',   {link = 'nofrils-shadow'})

vim.api.nvim_set_hl(0, 'TermCursor',   {link = 'nofrils-reverse'})
vim.api.nvim_set_hl(0, 'DiffAdd',      {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, 'DiffChange',   {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'DiffDelete',   {link = 'nofrils-red'})
vim.api.nvim_set_hl(0, 'DiffText',     {link = 'nofrils-blue'})
vim.api.nvim_set_hl(0, 'Folded',       {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'IncSearch',    {link = 'nofrils-highlight'})
vim.api.nvim_set_hl(0, 'LineNr',       {link = 'nofrils-shadow'})
vim.api.nvim_set_hl(0, 'LineNrAbove',  {link = 'nofrils-shadow'})
vim.api.nvim_set_hl(0, 'LineNrBelow',  {link = 'nofrils-shadow'})
vim.api.nvim_set_hl(0, 'PmenuSel',     {link = 'nofrils-highlight'})
vim.api.nvim_set_hl(0, 'StatusLine',   {link = 'nofrils-highlight'})
vim.api.nvim_set_hl(0, 'Visual',       {link = 'nofrils-highlight'})
vim.api.nvim_set_hl(0, 'WarningMsg',   {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'ErrorMsg',     {link = 'nofrils-red'})
vim.api.nvim_set_hl(0, 'CursorLine',   {link = 'nofrils-highlight'})
vim.api.nvim_set_hl(0, 'CursorColumn', {link = 'nofrils-highlight'})

--  set   (:h group-name)
vim.api.nvim_set_hl(0, 'Comment', {link = 'nofrils-shadow'})
vim.api.nvim_set_hl(0, 'Error',   {link = 'nofrils-red-bg'})
vim.api.nvim_set_hl(0, 'Added',   {link = 'nofrils-green'})
vim.api.nvim_set_hl(0, 'Changed', {link = 'nofrils-yellow'})
vim.api.nvim_set_hl(0, 'Removed', {link = 'nofrils-red'})

--  function
function nofrils()
	vim.cmd('colorscheme nofrils')
end
vim.api.nvim_create_user_command('Nofrils', nofrils, {})

function nofrils_focus_comment()
	vim.api.nvim_set_hl(0, 'Normal',  {ctermbg = 0, ctermfg = 7})
	vim.api.nvim_set_hl(0, 'Comment', {ctermbg = 0, ctermfg = 15})
end
vim.api.nvim_create_user_command('NofrilsFocusComment', nofrils_focus_comment, {})

function nofrils_presentation()
	vim.opt.number = false
	vim.opt.relativenumber = false
	vim.api.nvim_set_hl(0, 'Visual', {link = 'nofrils-reverse'})
end
vim.api.nvim_create_user_command('NofrilsPresentation', nofrils_presentation, {})

--  whitespace
-- https://vim.fandom.com/wiki/Highlight_unwanted_spaces
-- https://gist.github.com/pironim/3722006

-- {{{
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
-- }}}

--  test

-- vim.api.nvim_create_autocmd(
-- 	{'CursorMoved', 'CursorMovedI'}, {
-- 	group = nofrils,
-- 	pattern = {'*'},
-- 	callback = function()
-- 		vim.fn.matchadd('test', [[\s\+\%#\@<!$]])
-- 	end,
-- 	})
-- vim.api.nvim_set_hl(0, 'test', {link = 'nofrils-red-bg'})
