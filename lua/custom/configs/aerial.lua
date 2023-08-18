local status_ok, aerial = pcall(require, "aerial")
if not status_ok then
  return
end
aerial.setup{
  backends = { "treesitter", "lsp", "markdown", "man" },
  layout = {
  max_width = { 40, 0.2 },
  width = nil,
  min_width = 10,
  win_opts = {},
  default_direction = "prefer_right",
  placement = "window",
  resize_to_content = true,
  preserve_equality = false,
},
on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '[', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', ']', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
}
