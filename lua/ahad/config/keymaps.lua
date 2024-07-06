-- TODO
-- leader 
vim.g.leader = " "

-- util func
function Map(mode, lhs,rhs, opts) 
	local options = {noremap = true, silent = true}

	if opts then
		options = vim.tbl_extend("force", options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
end

-- exit insert mode with [jk] and [§]
Map("i", "jk", "<ESC>", {desc = "Exit insert mode with [ jk ]"})
Map("i", "§", "<ESC>", {desc = "Exit insert mode with [ § ]"})

-- clear search highlight
Map("n", "<leader>nh", ":nohl<CR>", {desc = "[ n ]o search [ h ]ighlights"})

-- increment and decrement
Map("n", "++", "<C-a>", {desc = "increment [ ++ ] number"})
Map("n", "--", "<C-x>", {desc = "decrement [ -- ] number"})

-- window 
Map("n", "<leader>we", "<C-w>=", {desc = "Make [ w ]indow [ e ]qual size"})
