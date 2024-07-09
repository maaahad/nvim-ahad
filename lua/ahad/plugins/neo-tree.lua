return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    local neotree = require("neo-tree") 

    neotree.setup({
    })


    --keymaps 
    vim.keymap.set("n", "<leader>ef", ":Neotree<CR>", {desc = "[ e ]xplore [ f ]iles"})
  end
}
