vim.cmd([[autocmd FileType cpp let b:dispatch = 'make %:r']])
vim.cmd([[autocmd FileType c let b:dispatch = 'make %:r']])
vim.cmd([[autocmd VimEnter * :silent! Copilot disable]])
