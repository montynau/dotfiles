return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
     { "nvim-telescope/telescope-file-browser.nvim"},
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")


    -- Telescope setup
    -------------------


telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })


    -- Telescope file browser setup
    --------------------------------


telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = { prompt_position = "top" },
    border = false
  }
})

telescope.load_extension "file_browser"

    keymap.set("n", "<leader>e", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "File explorer" })


  end,
}
