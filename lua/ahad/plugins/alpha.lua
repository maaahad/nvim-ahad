return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")

		local dashboard = require("alpha.themes.dashboard")

		-- set header
		dashboard.section.header.val = [[
   ________  ________  ________  ________      ________  ________  ________   _______ 
  ╱        ╲╱        ╲╱  ╱  ╱  ╲╱        ╲    ╱        ╲╱    ╱   ╲╱        ╲_╱       ╲
 ╱         ╱         ╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
╱         ╱        _╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱ 
╲___╱____╱╲____╱___╱╲________╱╲___╱____╱    ╲___╱____╱╲___╱____╱╲___╱____╱╲________╱  
    ]]

		--set menu
		-- more config ref: https://github.com/LunarVim/LunarVim/issues/2801
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>Neotree toggle<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button(
				"SPC sl",
				"󰁯  > Restore Session For Current Directory",
				"require('persistence').load()"
			),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
		}

		-- set config to alpha
		alpha.setup(dashboard.opts)
		-- disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
