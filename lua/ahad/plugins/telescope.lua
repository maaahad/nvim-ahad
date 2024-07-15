return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim"
  },
  config = function() 
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" }, 
        mappings = {
          i = {
            ["<c-k>"] = actions.move_selection_previous, -- move to prev result
            ["<c-j>"] = actions.move_selection_next, -- move to next result
            ["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist, 
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- key maps
    vim.keymap.set('n', '<leader><leader>', builtin.find_files, {desc = "[ f ]ind [ f ]iles"})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[ f ]ind [ f ]iles"})
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, {desc = "[ f ]ind by live [ s ]earch / grep in cwd"})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[ f ]ind [ b ]uffers"})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "[ f ]ind [ h ]elp tags"})
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "[ f ]ind [ g ]it files"})
    vim.keymap.set('n', '<leader>fc', builtin.grep_string, {desc = "[ f ]ind string under [ c ]ursor in cwd"})
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "[ f ]ind [ r ]ecent files"})
    vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<CR>", { desc = "[ f ]ind [ t ]odos"})
  end

}
