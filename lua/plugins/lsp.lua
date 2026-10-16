return {
  { "mason-org/mason.nvim", opts = {} },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig", "hrsh7th/cmp-nvim-lsp" },
    config = function()
      -- Shared defaults for every server; per-server overrides live in after/lsp/
      vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })

      -- Installed servers are enabled automatically via vim.lsp.enable()
      require("mason-lspconfig").setup({
        ensure_installed = { "ts_ls", "eslint", "rust_analyzer", "jdtls", "intelephense", "pylsp" },
      })
    end,
  },
}
