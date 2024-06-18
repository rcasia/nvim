return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "kristijanhusak/vim-dadbod-completion",
    },
    setup = function(a) end,

    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local sources = { { name = "emoji" }, { name = "vim-dadbod-completion" } }
      -- add sources
      for _, source in ipairs(sources) do
        table.insert(opts.sources, source)
      end
      local cmp = require("cmp")
      cmp.setup.filetype({ "sql" }, { sources = { { name = "vim-dadbod-completion" }, { name = "buffer" } } })

      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected items.
        ["<TAB>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected items.
      })
    end,
  },
}
