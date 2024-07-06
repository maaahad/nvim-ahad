return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = { options = vim.opt.sessionoptions:get() },
  -- stylua: ignore
  keys = {
	  { "<leader>ps", function() require("persistence").load() end, desc = "Restore [ s ]ession" },
	  { "<leader>pl", function() require("persistence").load({ last = true }) end, desc = "Restore [ l ]ast Session" },
	  { "<leader>pd", function() require("persistence").stop() end, desc = "[ d ]on't Save Current Session" },
  },
}
