return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function() 
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")


		-- key maps
		vim.keymap.set('n', '<leader>tf', builtin.find_files, {desc = "Find [ f ]iles"})
		vim.keymap.set('n', '<leader>ts', builtin.live_grep, {desc = "Find by live [ s ]earch / grep"})
		vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = "Find [ b ]uffers"})
		vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = "Find [ h ]elp tags"})
    vim.keymap.set('n', '<leader>tg', builtin.git_files, { desc = "Find [ g ]it files"})
	end

}
