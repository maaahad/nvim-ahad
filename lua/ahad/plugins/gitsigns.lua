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

			-- TODO: blame
		end,
	},
}
