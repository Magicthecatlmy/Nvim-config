vim.g.mapleader = " "
--QOL
--vim.keymap.set("n", "<leader>e", vim.cmd.Oil)
--vim.keymap.set("n", "<leader>ee", require("oil").toggle_float)
vim.keymap.set("n", "<leader>t", vim.cmd.TransparentToggle)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
--Telescope
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope<cr>")
