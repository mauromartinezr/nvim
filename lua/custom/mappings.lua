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
-------------------------------- Local M -----------------------------
local M = {}

--------------------------------- COPILOT ---------------------------------------
M.copilot = {
  i = {
    ["<C-x>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

--------------------------------- GENERAL ---------------------------------------
M.general = {


  i = {
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    [",q"] = { "<cmd> q! <CR>", "Quit force " },
    [",w"] = { "<cmd> w <CR>", "Save file fast" },
    [",ss"] = { "<cmd> :vertical split <CR>", "Vertical split" },
    [",sf"] = { "<cmd> :only <CR>", "Only window" },
  },
}

-- more keybinds!

-- Map the custom Hop command to a keybinding (e.g., <leader>s)

return M


