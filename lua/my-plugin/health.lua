---@class MyPlugin.Health
local M = {}

function M.check()
  vim.health.start('MyPlugin')

  if vim.g.MyPlugin_setup == 1 then
    vim.health.ok('MyPlugin has been setup!')
    return
  end

  vim.health.error('MyPlugin has not been setup correctly!')
end

return M
-- vim: set ts=2 sts=2 sw=2 et ai si sta:
