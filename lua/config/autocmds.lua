-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function autosave()
  vim.api.nvim_create_augroup("AutoSave", {
    clear = true,
  })

  vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
    callback = function() -- save
      local buf = vim.api.nvim_get_current_buf()
      vim.api.nvim_buf_call(buf, function()
        vim.cmd("silent! write")
      end)
    end,
    pattern = "*",
    group = "AutoSave",
  })
end

-- execute
-- autosave()

--- TO KNOW WHEN A RECORDING IS BEING MADE
local original_bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg

vim.api.nvim_create_autocmd("RecordingEnter", {
  callback = function()
    local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
    original_bg = hl.bg or "NONE"
    vim.api.nvim_set_hl(0, "Normal", { bg = "#222f3e", fg = hl.fg }) -- Cambia el fondo, manteniendo el color de texto
  end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
  callback = function()
    if original_bg and original_bg ~= "NONE" then
      vim.api.nvim_set_hl(0, "Normal", { bg = string.format("#%06x", original_bg) }) -- Restaura el color original
    else
      vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" }) -- Restaura el fondo transparente si era necesario
    end
  end,
})
