local M = {}
local colors = require "midnightarcade.colors"

M.config = {
  options = {
    transparent = false
  }
}

function M.setup(options)
  M.config = vim.tbl_extend('force', M.config, options or {})

  M.colorscheme()
end

function M.colorscheme()
  local hi = vim.api.nvim_set_hl

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end
  vim.g.colors_name = "midnightarcade"

  -- If transparent_background is set to true, set the background to NONE
  if M.config.options.transparent then
    hi(0, "Normal", { blend = 0, fg = "#c0aef4", bg = "NONE" })
  else
    -- Otherwise, set it to normal color
    hi(0, "Normal", { blend = 0, fg = "#c0aef4", bg = "#241E35" })
  end

  colors()
end

return M
