return {
  { "nvim-neotest/neotest-plenary", dir = "/home/rico/REPOS/neotest-plenary" },
  { "rcasia/neotest-java", dir = "/home/rico/REPOS/neotest-java" },
  { "rcasia/neotest-bash", dir = "/home/rico/REPOS/neotest-bash" },
  -- { "rcasia/neotest-bash" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-plenary",
      "rcasia/neotest-java",
    },
    opts = {
      adapters = {
        ["neotest-plenary"] = {
          min_init = "/home/rico/REPOS/neotest-java/tests/minimal_init.vim",
        },
        ["neotest-java"] = {},
        ["neotest-bash"] = {},
      },
    },
  },
  { "nvim-treesitter/playground" },
  {
    "Zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      -- your options here
    },
  },
}
