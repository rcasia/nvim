return {
  {
    "vinnymeller/swagger-preview.nvim",
    -- cmd = "npm install -g swagger-ui-watcher",
    event = "BufRead *.yaml",
    setup = function()
      require("swagger-preview").setup({
        -- The port to run the preview server on
        port = 8000,
        -- The host to run the preview server on
        host = "localhost",
      })

      -- open when entering the buffer
      vim.cmd([[ autocmd BufEnter *.yaml lua require("swagger-preview").start_server() ]])
    end,
  },
}
