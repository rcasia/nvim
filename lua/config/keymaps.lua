-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.keymap.set({ "n", "v" }, "<a-cr>", vim.lsp.buf.code_action, opts)

-- add your keymaps here
map("n", "zz", "<cmd>ZenMode<cr>")

-- NVIM-DAP
map("n", "ñ", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")

-- TODO: do something with popup from nui.nvim
-- map("n", "Ñ", function()
--   require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
-- end)
-- map("n", "<F5>", function()
--   require("dap").continue()
-- end)
--
-- map("n", "<F10>", function()
--   require("dap").step_over()
-- end)
-- map("n", "<F11>", function()
--   require("dap").step_into()
-- end)
-- map("n", "<F12>", function()
--   require("dap").step_out()
-- end)
-- map("n", "<Leader>dr", function()
--   require("dap").repl.open()
-- end)
-- map({ "n", "v" }, "<Leader>dh", function()
--   require("dap.ui.widgets").hover()
-- end)
-- map({ "n", "v" }, "<Leader>dp", function()
--   require("dap.ui.widgets").preview()
-- end)
-- map("n", "<Leader>df", function()
--   local widgets = require("dap.ui.widgets")
--   widgets.centered_float(widgets.frames)
-- end)
-- map("n", "<Leader>ds", function()
--   local widgets = require("dap.ui.widgets")
--   widgets.centered_float(widgets.scopes)
-- end)
