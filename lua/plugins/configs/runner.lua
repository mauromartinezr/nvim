
-- Can also be called with the buffer number where the code is:
-- require('runner').run( <buffer_number> )

-- To set a mapping
vim.keymap.set('n', '<F2>', require('runner').run)
