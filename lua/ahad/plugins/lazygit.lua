return {
	"kdheepak/lazygit.nvim",
	cms = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open [ l ]azy [ g ]it" },
	},
}
