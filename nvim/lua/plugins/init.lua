vim.g.mapleader = " "
return {
  {
 "xiyaowong/transparent.nvim",
  opt = {},
  extra_groups = {
		  "NormalFloat",
		  "NvimTreeNormal"
    },
  },
 {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "sharkdp/fd",
    },
  },
  {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
  },
 },
}
