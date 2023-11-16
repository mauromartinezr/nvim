
-- Can also be called with the buffer number where the code is:
-- require('runner').run( <buffer_number> )

-- To set a mapping
-- vim.keymap.set('n', '<F2>', require('runner').run)


-- function setup_go_mappings()
--     vim.api.nvim_buf_set_keymap(0, 'n', '<F2>', ':!go run %<CR>', { noremap = true, silent = true })
-- end
--
-- vim.cmd([[
--   augroup GoMappings
--     autocmd!
--     autocmd FileType go lua setup_go_mappings()
--   augroup END
-- ]])
