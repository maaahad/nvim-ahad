return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		local neotree = require("neo-tree")
		local neotree_command = require("neo-tree.command")

		neotree.setup({
			window = {
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
				},
			},
		})

		--keymaps
		vim.keymap.set("n", "<leader>ee", function()
			neotree_command.execute({ toggle = true, source = "filesystem", dir = vim.uv.cwd() })
		end, { desc = "Toggle file [ e ]xplorar(cwd)" })

		vim.keymap.set("n", "<leader>eg", function()
			neotree_command.execute({ toggle = true, source = "git_status" })
		end, { desc = "[ g ]it [ e ]xplorar" })

		vim.keymap.set("n", "<leader>eb", function()
			neotree_command.execute({ toggle = true, source = "buffers" })
		end, { desc = "[ b ]uffer [ e ]xplorar" })

		vim.keymap.set("n", "<leader>el", function()
			neotree_command.execute({ toggle = true, source = "last" })
		end, { desc = "[ l ]ast source [ e ]xplorar" })

		vim.keymap.set("n", "<leader>ef", function()
			neotree_command.execute({ reveal = true, toggle = true, dir = vim.uv.cwd() })
		end, { desc = "Toggle [ e ]xplorar on current [ f ]ile(cwd)" })

		--keymaps
		-- vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "[ e ]xplorar toggle" })
		-- vim.keymap.set("n", "<leader>et", "<cmd>Neotree toggle<CR>", { desc = "[ e ]xplorar  [ t ]oggle" })
		-- vim.keymap.set("n", "<leader>ef", "<cmd>Neotree filesystem<CR>", { desc = "[ e ]xplore  [ f ]ile system" })
		-- vim.keymap.set("n", "<leader>eb", "<cmd>Neotree buffers<CR>", { desc = "[ e ]xplore [ b ]uffers" })
		-- vim.keymap.set("n", "<leader>eg", "<cmd>Neotree git_status<CR>", { desc = "[ e ]xplore [ g ]it status" })
	end,
}
