-- Voy a probar un tiempo clang. si quiero cambiar es tan facil como poner gcc.
-- La opcion de abajo es para usar make que compile automaticamente
-- vim.cmd([[autocmd FileType cpp let b:dispatch = 'make %:r']])
-- vim.cmd([[autocmd FileType c let b:dispatch = 'make %:r']])
vim.cmd([[autocmd FileType cpp let b:dispatch = 'clang++ -o %:r % -g']])
vim.cmd([[autocmd FileType c let b:dispatch = 'clang -o %:r % -g']])
vim.cmd([[autocmd VimEnter * :silent! Copilot disable]])
