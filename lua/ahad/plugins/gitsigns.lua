return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			-- keymaps
			-- hunks navigation [[,]]
			map("n", "]h", gs.next_hunk, "Next [ h ]unk")
			map("n", "[h", gs.prev_hunk, "Prev [ h ]unk")

			-- actions
			map("n", "<leader>ghs", gs.stage_hunk, "[ s ]tage [ h ]unk")
			map("n", "<leader>ghs", gs.stage_hunk, "[ s ]tage [ h ]unk")
			map("n", "<leader>ghr", gs.reset_hunk, "[ r ]eset [ h ]unk")

			map("v", "<leader>ghs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "[ s ]tage [ h ]hunk")
			map("v", "<leader>ghr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "[ r ]tage [ h ]hunk")

			map("n", "<leader>ghS", gs.stage_buffer, "[ s ]tage buffer")
			map("n", "<leader>ghR", gs.reset_buffer, "[ r ]eset buffer")

			map("n", "<leader>ghu", gs.undo_stage_hunk, "[ u ]undo stage [ h ]hunk")
			map("n", "<leader>ghp", gs.preview_hunk, "[ p ]review [ h ]hunk")

			-- TODO: blame
			map("n", "<leader>ghb", function()
				gs.blame_line({ full = true })
			end, "[ b ]lame line")
			map("n", "<leader>gtb", gs.toggle_current_line_blame, "[ t ]oggle current line [ B ]lame")

			-- diff
			map("n", "<leader>ghd", gs.diffthis, "[ d ]iff this")
			map("n", "<leader>ghD", function()
				gs.diffthis("~")
			end, "[ d ]iff this ~")
			map("n", "<leader>gtd", gs.toggle_deleted, "[ t ]oggle [ d ]eleted")

			-- Text deleted
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select [ h ]unk")
		end,
	},
}
