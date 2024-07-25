return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		plugins = { spelling = true },
		defaults = {
			mode = { "n", "v" },
			{ "<leader>f", group = "+[ f ]ile / [ f ]ind" },
			{ "<leader>g", group = "+[ g ]it" },
			{ "<leader><tab>", group = "+[ tab ]s" },
			{ "<leader>w", group = "+[ w ]indows" },
			{ "<leader>n", group = "+[ n ]ew of or set [ n ]o to" },
			{ "<leader>e", group = "+[ e ]xplore" },
			{ "<leader>s", group = "+[ s ]ession / [ s ]earch / [ s ]witch" },
			{ "<leader>q", group = "+[ q ]uit" },
			{ "<leader>t", group = "+[ t ]rouble" },
			{ "<leader>l", group = "+[ l ]azy [git | vim]" },
			{ "<leader>h", group = "+[ h ]arpoon" },
			{ "<leader>o", group = "+[ o ]n/[ o ]ff/[ o ]pen" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		-- adding keymaps
		wk.add(opts.defaults)
		-- TODO: remove if does not feel right after testing
		-- show hydra mode for changing windo for changing windoww (testing)
		-- wk.show({
		--   keys = "<c-w>",
		--   loop = true, -- this will keep the popup open until you hit <esc>
		-- })
	end,
}
