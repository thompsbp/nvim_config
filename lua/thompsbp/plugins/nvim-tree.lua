return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 30,
        --relativenumber = true
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          }
        }
      },
      git = {
        ignore = false,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Open Nvim Tree File Browser." })
  end
}
