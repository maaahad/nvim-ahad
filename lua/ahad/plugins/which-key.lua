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
      { "<leader>p" , group = "+[ p ]ersistence" },
      { "<leader>f" , group = "+[ f ]ile / [ f ]ind" },
      { "<leader>g" , group = "+[ g ]it" },
      { "<leader><tab>" , group = "+[ tab ]s" },
      { "<leader>w" , group = "+[ w ]indows" },
      { "<leader>n" , group = "+[ n ]ew of or set [ n ]o to" },
      { "<leader>e" , group = "+[ e ]xplore" },
      { "<leader>s" , group = "+[ s ]ession / [ s ]earch" },
      { "<leader>q" , group = "+[ q ]uit" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    -- adding keymaps
    wk.add(opts.defaults)
  end,
}
