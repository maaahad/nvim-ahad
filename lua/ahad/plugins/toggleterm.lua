return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 3,
				title_pos = "left",
			},
		})
	end,
}
