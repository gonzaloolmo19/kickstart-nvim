return {
	{
		'NeogitOrg/neogit',
		cmd = 'Neogit',
		keys = '<leader>gg',

		dependencies = {
			'nvim-lua/plenary.nvim', -- required
			'nvim-telescope/telescope.nvim', -- optional
			'sindrets/diffview.nvim', -- optional
			'ibhagwan/fzf-lua',     -- optional
		},
		config = true,
	},
}
