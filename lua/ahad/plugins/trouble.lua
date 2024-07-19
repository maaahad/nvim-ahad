return {
  "folke/trouble.nvim", 
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim"}, 
  opts = {
    focus= true, 
  }, 
  cmd = "Trouble", 
  keys = {
    {"<leader>tw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open [ t ]rouble [ w ]orkspace diagnostics"}, 
    {"<leader>td", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open [ t ]rouble [ d ]ocument diagnostics"}, 
    {"<leader>tq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open [ t ]rouble [ q ]uickfix list"}, 
    {"<leader>tl", "<cmd>Trouble loclist toggle", desc = "Open [ t ]rouble [ l ]ocation list"}, 
    {"<leader>tt", "<cmd>Trouble todo toggle<CR>", desc = "Open [ t ]odos in [ t ]rouble"}, 
  }
}
