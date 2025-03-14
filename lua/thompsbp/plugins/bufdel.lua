return{
  "ojroques/nvim-bufdel",
  config = function()
    require("bufdel").setup({ quit = false })
    local keymap = vim.keymap
    keymap.set("n", "<leader>bx", "<cmd>BufDel<CR>", { desc = "Close the current buffer." })
    keymap.set("n", "<leader>bca", "<cmd>BufDelAll<CR>", { desc = "Close all buffers." })
    keymap.set("n", "<leader>bco", "<cmd>BufDelOthers<CR>", { desc = "Close all buffers." })
  end
}
