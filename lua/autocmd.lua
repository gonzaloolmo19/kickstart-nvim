vim.cmd([[autocmd FileType cpp let b:dispatch = 'g++ %']])
vim.cmd([[autocmd FileType c let b:dispatch = 'gcc %']])
vim.cmd([[autocmd VimEnter * :silent! Copilot disable]])
