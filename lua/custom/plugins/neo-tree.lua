return {
	{
		'nvim-neo-tree/neo-tree.nvim',
		cmd = 'NeoTree',
		keys = '<leader>e',

		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
			config = function()
				window = {
					mappings = {
						['l'] = 'open',
						['h'] = 'close',
					},
				}
			end,
		},
	},
}
