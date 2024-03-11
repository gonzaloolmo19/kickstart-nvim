return {
	-- HACK: Voy a probar este plugin que gestiona automaticamente las sessiones
	-- Si veo que se interpone demasiado en mi camino, puedo probar vim-obsession
	-- de tpope
	'rmagatti/auto-session',
	config = {
		auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
	}
}
