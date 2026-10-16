return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ") }) end },
    { "<C-p>", function() require("telescope.builtin").git_files() end },
    { "<leader>pf", function() require("telescope.builtin").find_files() end },
  },
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("fzf")
  end,
}
