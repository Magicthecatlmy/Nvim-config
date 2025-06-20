return {
	"stevearc/oil.nvim",
    dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
 --    enabled = false,
	config = function()
		require("oil").setup({
  --          default_file_explorer = true, -- start up nvim with oil instead of netrw
            delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
            skip_confirm_for_simple_edits = true,
		})

		-- opens parent dir over current active window
		vim.keymap.set("n", "<leader>ee", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		-- open parent dir in float window
		vim.keymap.set("n", "<leader>-", require("oil").toggle_float)

        vim.api.nvim_create_autocmd("FileType", {
     --       pattern = "oil", -- Adjust if Oil uses a specific file type identifier
            callback = function()
                vim.opt_local.cursorline = true
            end,
        })
	end,

}
