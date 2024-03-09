-- Keymaps for better default experience
-- See `:help vim.keymap.set()`

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>qf', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
-- [[ Quickfix ]]
vim.keymap.set('n', '<leader>qo', '<cmd>copen<CR>', { desc = 'Open quickfix' })
vim.keymap.set('n', '<leader>qc', '<cmd>cclose<CR>', { desc = 'Close quickfix' })


--Vim fugitive
vim.keymap.set('n', '<leader>gg', '<cmd>Git<CR>', { desc = 'Open vim fugitive' })

--Oil.nvim
vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open Oil.nvim' })

-- Mini.files es una alternativa a Oil.nvim
-- vim.keymap.set('n', '-', '<cmd>lua MiniFiles.open()<CR>', { desc = 'Open MiniFiles' })


--Neo-tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })

--Mappings para hacer mejor el movimiento vertical
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- [[ Zen Mode]]
vim.keymap.set('n', '<leader>wz', '<cmd>ZenMode<CR>', { desc = 'Toggle Zen Mode' })

--Sirve para mover lineas en bloque en visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--Cuando borre algo en visual o normal mode, no lo ponga en el clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without copying to clipboard' })


-- Buffer
vim.keymap.set('n', '[b', '<cmd>bprev<CR>', { desc = "Previous buffer" })
vim.keymap.set('n', ']b', '<cmd>bnext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<leader>b[', '<cmd>bprev<CR>', { desc = "Next buffer  ( [b )" })
vim.keymap.set('n', '<leader>b]', '<cmd>bnext<CR>', { desc = "Previous buffer  ( ]b )" })
vim.keymap.set('n', '<leader>bc', '<cmd>bd<CR>', { desc = "Close current buffer" })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

-- NOTE: Hace que se pueda comentar usando <leader> en vez de g
--
-- [[ Comment.nvim ]]
-- see :help comment-nvim
-- Toggle current line or with count
-- vim.keymap.set('n', '<leader>cc', function()
-- 	return vim.v.count == 0
-- 		and '<Plug>(comment_toggle_linewise_current)'
-- 		or '<Plug>(comment_toggle_linewise_count)'
-- end, { expr = true, desc = "Toggle comment", })

-- Toggle in Op-pending mode
-- vim.keymap.set('n', '<leader>cc', '<Plug>(comment_toggle_linewise)')

-- Toggle in VISUAL mode
-- vim.keymap.set('x', '<leader>c', '<Plug>(comment_toggle_linewise_visual)', { desc = "Toggle comment" })


-- NOTE: Mapping para la integracion con mi configuracion de tmux

--Tmux navigator
vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'Navigate left' })
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', { desc = 'Navigate down' })
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', { desc = 'Navigate up' })
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', { desc = 'Navigate right' })

-- [[UndoTree]]
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { desc = 'UndoTree' })

-- [[TODO.nvim]]
vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>', { desc = '[F]ind [T]odos' })

-- [[dispatch.vim]]
vim.keymap.set('n', '<leader>md', ':Dispatch ', { desc = '<cmd>Dispatch (args)' })
vim.keymap.set('n', '<leader>mD', ':Dispatch! ', { desc = '<cmd>Dispatch! (args)' })
vim.keymap.set('n', '<leader>m<Space>', ':Make ', { desc = '<cmd>Make (args)' })
vim.keymap.set('n', '<leader>m<CR>', '<cmd>Make<CR>', { desc = "<cmd>Make" })
vim.keymap.set('n', '<leader>ms', ':Start ', { desc = "<cmd>Start (args)" })
vim.keymap.set('n', '<leader>mf', ':FocusDispatch ', { desc = "<cmd>FocusDispatch (args)" })

-- document existing key chains
require('which-key').register {
	['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
	['<leader>l'] = { name = '[L]SP', _ = 'which_key_ignore' },
	['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
	['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
	['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
	['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
	['<leader>t'] = { name = '[T]reesitter', _ = 'which_key_ignore' },
	['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
	['<leader>q'] = { name = 'Diagnostics', _ = 'which_key_ignore' },
	['<leader>m'] = { name = '[M]ake', _ = 'which_key_ignore' },
}
