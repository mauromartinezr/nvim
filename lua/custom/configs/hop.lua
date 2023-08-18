local status_ok, hop = pcall(require, "hop")
if not status_ok then
  return
end


hop.setup{

vim.cmd([[command! -nargs=0 Hop :lua require'hop'.hint_words()]]),
vim.cmd([[command! -nargs=0 Hopchar :lua require'hop'.hint_char2()]]),

-- Map the custom Hop command to a keybinding (e.g., <leader>s)
vim.api.nvim_set_keymap('n', '<leader>s', ':Hop<CR>', { silent = true }),
vim.api.nvim_set_keymap('n', '<leader>S', ':Hopchar<CR>', { silent = true })
}
