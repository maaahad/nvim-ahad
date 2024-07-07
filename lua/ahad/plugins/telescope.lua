return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function() 
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")


		-- key maps
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[ f ]ind [ f ]iles"})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "[ f ]ind by live [ g ]rep"})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[ f ]ind [ b ]uffers"})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "[ f ]ind [ h ]elp tags"})
	end

}
