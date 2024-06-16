return {
  "rmagatti/goto-preview",
  config = function()
    require("goto-preview").setup({})
  end,
  keys = {
    {
      "gpd",
      function()
        require("goto-preview").goto_preview_definition()
      end,
      desc = "Preview go to definition",
    },
    {
      "gpi",
      function()
        require("goto-preview").goto_preview_implementation()
      end,
      desc = "Preview go to implementation",
    },
    {
      "gpr",
      function()
        require("goto-preview").goto_preview_references()
      end,
      desc = "Preview go to references",
    },
  },
}
