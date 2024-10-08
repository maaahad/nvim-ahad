return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		startify.section.header.val = [[
	   ________  ________  ________  ________      ________  ________  ________   _______
	  ╱        ╲╱        ╲╱  ╱  ╱  ╲╱        ╲    ╱        ╲╱    ╱   ╲╱        ╲_╱       ╲
	 ╱         ╱         ╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
	╱         ╱        _╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
	╲___╱____╱╲____╱___╱╲________╱╲___╱____╱    ╲___╱____╱╲___╱____╱╲___╱____╱╲________╱
	    ]]

		-- startify.section.padding = { { type = "padding", val = 200 } }
		alpha.setup(startify.config)
	end,

	-- config = function()
	-- 	local alpha = require("alpha")
	-- 	local dashboard = require("alpha.themes.dashboard")
	-- 	dashboard.section.header.val = [[
	--    ________  ________  ________  ________      ________  ________  ________   _______
	--   ╱        ╲╱        ╲╱  ╱  ╱  ╲╱        ╲    ╱        ╲╱    ╱   ╲╱        ╲_╱       ╲
	--  ╱         ╱         ╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
	-- ╱         ╱        _╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
	-- ╲___╱____╱╲____╱___╱╲________╱╲___╱____╱    ╲___╱____╱╲___╱____╱╲___╱____╱╲________╱
	--     ]]
	--
	-- 	dashboard.section.buttons.val = {
	-- 		dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	-- 		dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
	-- 	}
	--
	-- 	dashboard.config.opts.noautocmd = true
	--
	-- 	vim.cmd([[autocmd User AlphaReady echo 'ready']])
	--
	-- 	alpha.setup(dashboard.config)
	-- end,
}
