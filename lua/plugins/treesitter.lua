return {
  {
    -- "master" is frozen but supports Neovim 0.11. Once on Neovim 0.12, switch to
    -- branch = "main", which drops nvim-treesitter.configs in favour of
    -- require("nvim-treesitter").install() + vim.treesitter.start().
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = { "javascript", "typescript", "tsx", "php", "scala", "c", "lua", "rust", "java", "python" },
      auto_install = true,
      highlight = { enable = true, additional_vim_regex_highlighting = false },
      matchup = { enable = true },
    },
  },
  { "nvim-treesitter/nvim-treesitter-context", opts = {} },
  { "andymass/vim-matchup", lazy = false },
}
