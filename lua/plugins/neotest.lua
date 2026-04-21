return {
  { "nvim-neotest/neotest-plenary" },
  { "rcasia/neotest-java", dir = "/Users/ricardocasia/REPOS/opensource/neotest-java" },
  { "rcasia/neotest-bash", dir = "/Users/ricardocasia/REPOS/opensource/neotest-bash" },
  -- { "rcasia/neotest-bash" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-plenary",
      "rcasia/neotest-java",
      "nvim-neotest/nvim-nio",
    },
    opts = {
      adapters = {
        ["neotest-plenary"] = {
          min_init = "/Users/ricardocasia/REPOS/opensource/neotest-java/tests/minimal_init.vim",
        },
        ["neotest-java"] = {},
        ["neotest-bash"] = {},
      },
    },
  },
  {
    "Zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      -- your options here
    },
  },
}
