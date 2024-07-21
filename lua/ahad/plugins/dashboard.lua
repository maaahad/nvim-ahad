return {
	"nvimdev/dashboard-nvim",
	lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
	enabled = false,
	opts = function()
		local logo = [[
   ________  ________  ________  ________      ________  ________  ________   _______ 
  ╱        ╲╱        ╲╱  ╱  ╱  ╲╱        ╲    ╱        ╲╱    ╱   ╲╱        ╲_╱       ╲
 ╱         ╱         ╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱
╱         ╱        _╱         ╱         ╱   ╱         ╱         ╱         ╱         ╱ 
╲___╱____╱╲____╱___╱╲________╱╲___╱____╱    ╲___╱____╱╲___╱____╱╲___╱____╱╲________╱  
    ]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				header = vim.split(logo, "\n"),
				week_header = {
					enable = false,
				},
        -- stylua: ignore
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File           ',
            desc_hl = 'String',
            key = 'b',
            keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'lua print(2)'
          },
          {
            icon = ' ',
            desc = 'Find Dotfiles',
            key = 'f',
            keymap = 'SPC f d',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'lua print(3)'
          },
          {
            action = 'lua require("persistence").load()',
            desc = "Restore session",
            icon = " ",
            key = "s",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = "Quit",
            icon = " ",
            key = "q",
          }
        },
				-- center = {
				--   {
				--     action = "lua lazyvim.pick()()",
				--     desc = " find file",
				--     icon = " ",
				--     key = "f",
				--   },
				--   {
				--     action = "ene | startinsert",
				--     desc = " new file",
				--     icon = " ",
				--     key = "n",
				--   },
				--   {
				--     action = 'lua lazyvim.pick("oldfiles")()',
				--     desc = " recent files",
				--     icon = " ",
				--     key = "r",
				--   },
				--   {
				--     action = 'lua lazyvim.pick("live_grep")()',
				--     desc = " find text",
				--     icon = " ",
				--     key = "g",
				--   },
				--   {
				--     action = "lua lazyvim.pick.config_files()()",
				--     desc = " config",
				--     icon = " ",
				--     key = "c",
				--   },
				--   {
				--     action = 'lua require("persistence").load()',
				--     desc = " restore session",
				--     icon = " ",
				--     key = "s",
				--   },
				--   {
				--     action = "lazyextras",
				--     desc = " lazy extras",
				--     icon = " ",
				--     key = "x",
				--   },
				--   {
				--     action = "lazy",
				--     desc = " lazy",
				--     icon = "󰒲 ",
				--     key = "l",
				--   },
				--   {
				--     action = function()
				--       vim.api.nvim_input("<cmd>qa<cr>")
				--     end,
				--     desc = " quit",
				--     icon = " ",
				--     key = "q",
				--   },
				-- },
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
		end

		-- open dashboard after closing lazy
		if vim.o.filetype == "lazy" then
			vim.api.nvim_create_autocmd("WinClosed", {
				pattern = tostring(vim.api.nvim_get_current_win()),
				once = true,
				callback = function()
					vim.schedule(function()
						vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
					end)
				end,
			})
		end

		return opts
	end,
}
