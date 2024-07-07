return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      ["g"] = { name = "+goto" },
      ["gs"] = { name = "+surround" },
      ["z"] = { name = "+fold" },
      ["]"] = { name = "+next" },
      ["["] = { name = "+prev" },
      ["<leader>b"] = { name = "+buffer" },
      ["<leader>c"] = { name = "+code" },
      ["<leader>gh"] = { name = "+hunks", ["_"] = "which_key_ignore" },
      ["<leader>s"] = { name = "+search" },
      ["<leader>u"] = { name = "+ui" },
      ["<leader>x"] = { name = "+diagnostics/quickfix" },

      -- TODO: my settings
      ["<leader>p"] = { name = "+[ p ]ersistence" },
      ["<leader>f"] = { name = "+[ f ]ile / [ f ]ind" },
      ["<leader>g"] = { name = "+[ g ]it" },
      ["<leader><tab>"] = { name = "+tabs" },
      ["<leader>w"] = { name = "+[ w ]indows" },
      ["<leader>n"] = { name = "+[ n ]ew of or set [ n ]o to" },
      ["<leader>e"] = { name = "+[ e ]xplore" },
      ["<leader>s"] = { name = "+[ s ]ession / [ s ]earch" },
      ["<leader>q"] = { name = "+[ q ]uit" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
