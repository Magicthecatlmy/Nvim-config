vim.g.mapleader = " "
return {
  {
 "xiyaowong/transparent.nvim",
  extra_groups = {
		  "NormalFloat",
		  "NvimTreeNormal"
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
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
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
    lazy = false,
    config = function()
      require("oil").setup({
        defualt_file_explorer = true,
        colums = { },
        keymaps = {
          ["q"] = "actions.close",
        },
        skip_confirm_for_simple_edits = true,
      })
      vim.keymap.set("n", "<leader>ee", vim.cmd.Oil)
      vim.keymap.set("n", "<leader>ef", require("oil").toggle_float)

    end,
    },
  {
    "nvzone/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      position = "bottom-left",
      maxkeys = 3,
      show_count = true,

    },
  },
 }
