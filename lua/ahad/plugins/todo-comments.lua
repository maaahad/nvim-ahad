return {
  "folke/todo-comments.nvim", 
  event = {"BufReadPre", "BufNewFile"}, 
  dependencies = { "nvim-lua/plenary.nvim" }, 
  config = function()
    local todo_comments = require("todo-comments")

    -- keymaps
    vim.keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, 
      { desc = "Next [ t ]odo comment"}
    )

    vim.keymap.set("n", "]t", function()
    end, 
      { desc = "Previous [ t ]odo comment"}
    )

    todo_comments.setup()
  end
}
