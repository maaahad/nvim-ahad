return {
	"windwp/nvim-ts-autotag",
	event = "VeryLazy",
	opts = {},
	config = function()
		local autotag = require("nvim-ts-autotag")

		autotag.setup({})
	end,
}
