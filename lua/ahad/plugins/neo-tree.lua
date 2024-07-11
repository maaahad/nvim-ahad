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
    vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", {desc = "[ e ]xplorar toggle"})
    vim.keymap.set("n", "<leader>et", "<cmd>Neotree toggle<CR>", {desc = "[ e ]xplorar  [ t ]oggle"})
    vim.keymap.set("n", "<leader>eb", "<cmd>Neotree buffers<CR>", {desc = "[ e ]xplore [ b ]uffers"})
    vim.keymap.set("n", "<leader>eg", "<cmd>Neotree git_status<CR>", {desc = "[ e ]xplore [ g ]it status"})
end
}
