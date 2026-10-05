local group = vim.api.nvim_create_augroup("vvjpet", { clear = true })
local function au(event, opts)
  vim.api.nvim_create_autocmd(event, vim.tbl_extend("force", { group = group }, opts))
end

-- LSP keymaps (K, [d, ]d, grn, gra, grr, gri, <C-s> are Neovim defaults)
au("LspAttach", {
  callback = function(ev)
    local function map(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf })
    end
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
    map("n", "<leader>vd", vim.diagnostic.open_float)
    map("n", "<leader>vca", vim.lsp.buf.code_action)
    map("n", "<leader>vrr", vim.lsp.buf.references)
    map("n", "<leader>vrn", vim.lsp.buf.rename)
    map("i", "<C-h>", vim.lsp.buf.signature_help)

    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
    end
  end,
})

-- Highlight yank
au("TextYankPost", { callback = function() vim.hl.on_yank() end })

-- Horizontal bar needs to disappear when inserting
au("InsertEnter", { command = "set nocursorline" })
au("InsertLeave", { command = "set cursorline" })

-- Strip trailing whitespace without moving the cursor
au("BufWritePre", {
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

-- Jump to last edit position on opening file
au("BufReadPost", {
  callback = function(ev)
    if ev.file:match("/%.git/") then return end
    local mark = vim.api.nvim_buf_get_mark(ev.buf, '"')
    if mark[1] > 1 and mark[1] <= vim.api.nvim_buf_line_count(ev.buf) then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Prevent accidental writes to buffers that shouldn't be edited
au("BufRead", { pattern = { "*.orig", "*.pacnew" }, command = "setlocal readonly" })

-- Shorter columns and spelling in prose
au("FileType", {
  pattern = { "gitcommit", "mail", "text", "markdown" },
  command = "setlocal spell tw=72 colorcolumn=73",
})
au("FileType", { pattern = "mail", command = "setlocal formatoptions+=w" })
au("FileType", { pattern = "tex", command = "setlocal spell tw=80 colorcolumn=81" })

-- Follow Rust code style rules
au("FileType", { pattern = "rust", command = "setlocal colorcolumn=100" })

-- Help filetype detection
vim.filetype.add({
  extension = { plot = "gnuplot", lds = "ld", trm = "c", nft = "nftables" },
  pattern = {
    ["/tmp/mutt.*"] = "mail",
    [".*%.xlsx%.axlsx"] = "ruby",
  },
})
