return {
	{
		"lvimuser/lsp-inlayhints.nvim",
		ft = { "c", "cpp", "python" },
		init = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("LspAttach_inlayhints", {}),
				callback = function(args)
					if not (args.data and args.data.client_id) then return end
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client.server_capabilities.inlayHintProvider then
						local inlayhints = require "lsp-inlayhints"
						inlayhints.on_attach(client, args.buf)
						vim.keymap.set('n', '<leader>li', inlayhints.toggle, { desc = "Toggle [I]nlay Hints" })
					end
				end,
			})
		end,
		opts = {},
	},
	{
		"p00f/clangd_extensions.nvim",
		optional = true,
		opts = { extensions = { autoSetHints = false } },
	},
	{
		"simrat39/rust-tools.nvim",
		optional = true,
		opts = { tools = { inlay_hints = { auto = false } } },
	},
}
