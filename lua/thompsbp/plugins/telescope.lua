return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<A-k>"] = actions.move_selection_previous,
						["<A-j>"] = actions.move_selection_next,
						["<A-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in CWD." })
		keymap.set("n", "<leader>fr", "<CMD>Telescope old_files<CR>", { desc = "Fuzzy find recent files." })
		keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<CR>", { desc = "Find string in CWD." })
		keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<CR>", { desc = "Find string under cursor in CWD." })
		keymap.set("n", "<leader>ft", "<CMD>TodoTelescope<CR>", { desc = "Find TODO Comments." })
	end,
}
