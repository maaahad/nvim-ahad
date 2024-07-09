-- TODO
-- leader 
vim.g.leader = " "
map = vim.keymap.set

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

-- quit nvim 
Map("n", "<leader>qq", "<cmd>qa<cr>", {desc = "[ q ]uit all"})

-- clear search highlight
Map("n", "<leader>nh", ":nohl<CR>", {desc = "[ n ]o search [ h ]ighlights"})

-- increment and decrement
Map("n", "<leader>++", "<C-a>", {desc = "increment [ ++ ] number"})
Map("n", "<leader>--", "<C-x>", {desc = "decrement [ -- ] number"})

-- window size using <leader> em
Map("n", "<leader>we", "<C-w>=", {desc = "Make [ w ]indow [ e ]qual size"})

-- move to window using <ctrl> hjkl

-- paste without putting the deleted stuff to paste register
Map("x", "<leader>p", "\"_dp")
