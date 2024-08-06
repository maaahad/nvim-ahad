return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	-- config = function()
	-- 	local ls = require("luasnip")
	--
	-- 	vim.keymap.set({ "i" }, "<C-k>", function()
	-- 		ls.expand()
	-- 	end, { silent = true })
	--
	-- 	-- VS code like snippets
	-- 	require("luasnip.loaders.from_vscode").lazy_load()
	--
	-- 	ls.setup({})
	-- end,
}
