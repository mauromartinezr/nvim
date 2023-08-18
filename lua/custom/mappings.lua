---@type MappingsTable
--
--
------------------------------- Telescope Projects ---------------------------
vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  ":lua require'telescope'.extensions.project.project{}<CR>",
  {noremap = true, silent = true}
)

------------------------------- Hop ---------------------------
vim.api.nvim_set_keymap(
  'n',
  '<leader>s',
  ":lua require'hop'.hint_words()<CR>",
  {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>S',
  ":lua require'hop'.hint_char2()<CR>",
  {noremap = true, silent = true}
)
------------------------------- Aerial ---------------------------
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n',
  '<leader>a',
  '<cmd>Telescope aerial<CR>',
  {noremap = true, silent = true}
)

vim.keymap.set('n',
  '<leader>A',
  '<cmd>AerialToggle!<CR>',
  {noremap = true, silent = true}
)

-------------------------------- Local M -----------------------------
local M = {}

M.general = {


  i = {
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    [",q"] = { "<cmd> q! <CR>", "Quit force " },
    [",w"] = { "<cmd> w <CR>", "Save file fast" },
    [",ss"] = { "<cmd> :vertical split <CR>", "Vertical split" },
  },
}

-- more keybinds!

-- Map the custom Hop command to a keybinding (e.g., <leader>s)

return M


