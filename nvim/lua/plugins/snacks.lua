return {
  "folke/snacks.nvim",
    priotirty = 1000,
    lazy = false,
    opts = {

   },
    keys = {
    {"<leader>es", function() require("snacks").explorer() end, desc = "Open Snacks Explorer"},
    {"<leader>er", function() require("snacks").rename.rename_file() end, desc = "Rename Buffer"},
    {"<leader>bc", function() require("snacks").bufdelete() end, desc = "Close Buffer (Confirm)"},
    },
}
