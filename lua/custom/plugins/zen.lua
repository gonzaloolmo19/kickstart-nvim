return {
	-- Lua
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",

		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			plugins = {
				tmux = {
					enabled = true,
				},
				kitty = {
					enabled = true,
					font = "+1", -- font size increment
				},
				gitsigns = { enabled = true },
			}
		}
	}
}
