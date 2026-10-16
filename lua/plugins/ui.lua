local dark = "base16-gruvbox-dark-hard"
local light = "github_light_default"

local function apply(name)
  vim.cmd.colorscheme(name)
  for _, group in ipairs({ "Normal", "NormalFloat", "LineNr", "SignColumn" }) do
    local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
    hl.bg = nil
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return {
  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      apply(dark)
      vim.keymap.set("n", "<leader>tb", function()
        apply(vim.g.colors_name == dark and light or dark)
      end)
    end,
  },
  -- Loaded by lazy.nvim when :colorscheme github_* is requested
  { "projekt0n/github-nvim-theme", lazy = true },
  {
    "itchyny/lightline.vim",
    lazy = false,
    init = function()
      vim.g.lightline = {
        active = {
          left = { { "mode", "paste" }, { "readonly", "filename", "modified" } },
          right = { { "lineinfo" }, { "percent" }, { "fileencoding", "filetype" } },
        },
        component = { filename = "%f" },
      }
    end,
  },
}
