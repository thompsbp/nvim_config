vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

local keymap = vim.keymap -- for concisenes

-- source
keymap.set("n", "<leader>scf", ":source %<CR>", { desc = "Source the current file." })

-- saving
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save the current file." })

-- exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk." })

-- searching
keymap.set("n", "<leader>nh", ":nohl <CR>", { desc = "Clear search highlights." })

-- window splitting
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically." })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally." })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size." })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close the current split." })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab." })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close the current tab." })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to the next tab." })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to the previous tab." })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open the current buffer in a new tab." })

--- buffers
keymap.set("n", "<Tab>", "<cmd>bn<CR>", { desc = "Go to the next tab." })
keymap.set("n", "<S-Tab>", "<cmd>bp<CR>", { desc = "Go to the previous tab." })
keymap.set("n", "<leader>x", "<cmd>BufDel<CR>", { desc = "Close the current buffer." })
keymap.set("n", "<leader>bda", "<cmd>BufDelAll<CR>", { desc = "Close all buffers." })
keymap.set("n", "<leader>bdo", "<cmd>BufDelOthers<CR>", { desc = "Close all buffers." })

-- nvim tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Open Nvim Tree File Browser." })
