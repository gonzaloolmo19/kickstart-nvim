-- La opcion de abajo es para usar make que compile automaticamente
vim.cmd([[
	autocmd FileType cpp let b:dispatch = 'make %:r'
	autocmd FileType c let b:dispatch = 'make %:r'
	autocmd VimEnter * :silent! Copilot disable
]])
