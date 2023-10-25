local M = {}

config = {
  options = {
    transparent = false
  }
}

function M.setup(opts)
  opts = opts or {}

  config = vim.tbl_deep_extend('force', config, opts)
end

function M.colorscheme()
  local get_theme = require "midnightarcade.colors"

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end
  vim.g.colors_name = "midnightarcade"

  get_theme(config)
end

return M
