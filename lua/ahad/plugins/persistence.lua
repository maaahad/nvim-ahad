return {
	"folke/persistence.nvim",
	event = "BufReadPre",
	opts = { options = vim.opt.sessionoptions:get() },
  -- stylua: ignore
  keys = {
	  { "<leader>sr", function() require("persistence").load() end, desc = "[ r ]estore session" },
	  { "<leader>sl", function() require("persistence").load({ last = true }) end, desc = "Restore [ l ]ast session" },
	  { "<leader>sd", function() require("persistence").stop() end, desc = "[ d ]on't Save Current Session" },
  },
}
