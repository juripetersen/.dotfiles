return {
  { "coder/claudecode.nvim", opts = {} },
  { "whonore/Coqtail", ft = "coq" },
  { "godlygeek/tabular", cmd = "Tabularize" },
  {
    "preservim/vim-markdown",
    ft = "markdown",
    init = function()
      vim.g.vim_markdown_new_list_item_indent = 0
      vim.g.vim_markdown_auto_insert_bullets = 0
      vim.g.vim_markdown_frontmatter = 1
    end,
  },
}
