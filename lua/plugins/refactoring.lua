return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        mode = { "x", "n" },
        "<leader>rr",
        function()
          require("refactoring").select_refactor({})
        end,
        desc = "Refactor",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected items.
        ["<TAB>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected items.
      })
    end,
  },
}

-- -- prompt for a refactor to apply when the remap is triggered
-- vim.keymap.set(
--     {"n", "x"},
--     "<leader>rr",
--     function() require('refactoring').select_refactor() end
-- )
-- -- Note that not all refactor support both normal and visual mode
