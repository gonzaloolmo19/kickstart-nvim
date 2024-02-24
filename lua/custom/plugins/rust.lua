return {
	{
		"simrat39/rust-tools.nvim",
		ft = { "rust" },
		dependencies = {
			{
				"jay-babu/mason-nvim-dap.nvim",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"Saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		init = function()
			vim.api.nvim_create_autocmd("BufRead", {
				group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
				pattern = "Cargo.toml",
				callback = function()
					require("cmp").setup.buffer { sources = { { name = "crates" } } }
					require "crates"
				end,
			})
		end,
		opts = {
			null_ls = {
				enabled = true,
				name = "crates.nvim",
			},
		},
	},
}
