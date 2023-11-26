-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
--

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--Neogit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open Neogit' })

--Oil.nvim
vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open Oil.nvim' })

--Neo-tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })

--Mappings para hacer mejor el movimiento vertical
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

--Sirve para mover lineas en bloque en visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--Cuando borre algo en visual o normal mode, no lo ponga en el clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without copying to clipboard' })

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

-- [[ Comment.nvim ]]
-- see :help comment-nvim
-- Toggle current line or with count
vim.keymap.set('n', '<leader>cc', function()
	return vim.v.count == 0
		and '<Plug>(comment_toggle_linewise_current)'
		or '<Plug>(comment_toggle_linewise_count)'
end, { expr = true, desc = "Toggle comment", })

-- Toggle in Op-pending mode
-- vim.keymap.set('n', '<leader>cc', '<Plug>(comment_toggle_linewise)')

-- Toggle in VISUAL mode
vim.keymap.set('x', '<leader>c', '<Plug>(comment_toggle_linewise_visual)', { desc = "Toggle comment" })




-- [[Harpoon mappings]]
vim.keymap.set('n', '<leader>hh', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
	{ desc = 'Toggle Harpoon menu' })
vim.keymap.set('n', '<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<CR>', { desc = 'Add file to Harpoon' })
vim.keymap.set('n', '<leader>hu', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'Goto mark 1 (A-u)' })
vim.keymap.set('n', '<leader>hi', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'Goto mark 2 (A-i)' })
vim.keymap.set('n', '<leader>ho', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'Goto mark 3 (A-o)' })
vim.keymap.set('n', '<leader>hp', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'Goto mark 4 (A-p)' })

vim.keymap.set('n', '<A-y>', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'Goto mark 1 (A-u)' })
vim.keymap.set('n', '<A-u>', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'Goto mark 2 (A-i)' })
vim.keymap.set('n', '<A-i>', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'Goto mark 3 (A-o)' })
vim.keymap.set('n', '<A-o>', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'Goto mark 4 (A-p)' })

--Tmux navigator
vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'Navigate left' })
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', { desc = 'Navigate down' })
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', { desc = 'Navigate up' })
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', { desc = 'Navigate right' })

-- [[UndoTree]]
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { desc = 'UndoTree' })

-- [[TODO.nvim]]
vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>', { desc = '[F]ind [T]odos' })

-- document existing key chains
require('which-key').register {
	['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
	['<leader>l'] = { name = '[L]SP', _ = 'which_key_ignore' },
	['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
	['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
	['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
	['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },

	-- Harpoon mappings
	['<leader>h'] = { name = '[H]arpoon', _ = 'which_key_ignore' },

}
