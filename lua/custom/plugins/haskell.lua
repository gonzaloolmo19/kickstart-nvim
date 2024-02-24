return {
	{
		'mrcjkb/haskell-tools.nvim',
		version = '^3', -- Recommended
		ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
	},
	{
		"mrcjkb/haskell-snippets.nvim",
		ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
		dependencies = { "L3MON4D3/LuaSnip" },
		config = function()
			local haskell_snippets = require("haskell-snippets").all
			require("luasnip").add_snippets("haskell", haskell_snippets, { key = "haskell" })
		end,
	},

}
