return {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        -- your config goes here
        -- or just leave it empty :)
        debounce_delay = 1500,
        execution_message = {
          message = "",
        },
      })
    end,
  },
}
