nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>


nnoremap <leader>fn :lua string.sub(vim.api.nvim_buf_get_name(0), 1, string.find(vim.api.nvim_buf_get_name(0), "/[^/]*$")) io.open(string.sub(vim.api.nvim_buf_get_name(0), 1, string.find(vim.api.nvim_buf_get_name(0), "/[^/]*$")) .. vim.fn.input("[NEW FILE] " .. string.sub(vim.api.nvim_buf_get_name(0), 1, string.find(vim.api.nvim_buf_get_name(0), "/[^/]*$"))), "w")<CR>
nnoremap <leader>fnr :lua io.open(os.getenv("PWD") .. "/" .. vim.fn.input("[NEW FILE] " .. os.getenv("PWD") .. "/"), "w")<CR> 
nnoremap <leader>fdc :lua os.remove(vim.api.nvim_buf_get_name(0))

