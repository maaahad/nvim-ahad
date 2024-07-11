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


-- ====================================== EXIT INSERT MODE ======================================
-- exit insert mode with [jk] and [§]
Map("i", "jk", "<ESC>", {desc = "Exit insert mode with [ jk ]"})
Map("i", "§", "<ESC>", {desc = "Exit insert mode with [ § ]"})

-- ====================================== EXIT VIM ======================================
Map("n", "<leader>qq", "<cmd>qa<cr>", {desc = "[ q ]uit all"})


-- ====================================== CLEAR SEARCH HIGHLIGHT ======================================
Map("n", "<leader>nh", ":nohl<CR>", {desc = "[ n ]o search [ h ]ighlights"})



-- ====================================== INCREMENT / DECREMENT ======================================
Map("n", "<leader>+", "<C-a>", {desc = "increment [ + ] number"})
Map("n", "<leader>-", "<C-x>", {desc = "decrement [ - ] number"})



-- ====================================== WINDOW ======================================
-- window spliting 
Map("n", "<leader>ww", "<C-w>v", {desc = "Split window [ v ]ertically (default)"})
Map("n", "<leader>wv", "<C-w>v", {desc = "Split window [ v ]ertically"})
Map("n", "<leader>wh", "<C-w>h", {desc = "Split window [ h ]orizontally"})

-- close current window
Map("n", "<leader>wc", "<cmd>close<CR>", {desc = "[ c ]lose current window"})
-- window size using <leader> em
Map("n", "<leader>we", "<C-w>=", {desc = "Make [ w ]indow [ e ]qual size"})

-- move to window using <ctrl> hjkl.


-- ====================================== TAB ======================================
Map("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", {desc = "open new [ tab ]"})
Map("n", "<leader><tab>c", "<cmd>tabclose<CR>", {desc = "[ c ]lose current tab"})
Map("n", "<leader><tab>n", "<cmd>tabn<CR>", {desc = "To [ n ]ext tab"})
Map("n", "<leader><tab>p", "<cmd>tabp<CR>", {desc = "To [ p ]revious tab"})
Map("n", "<leader><tab>b", "<cmd>tabnew %<CR>", {desc = "Open current [ b ]uffer in a new tab"})


-- ====================================== BUFFER ======================================

-- -paste without putting the deleted stuff to paste register
Map("x", "<leader>pp", "\"_dp")
