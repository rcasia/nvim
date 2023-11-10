return {
  { "nvim-neotest/neotest-plenary" },
  { "rcasia/neotest-java" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-plenary"] = {
          min_init = "/home/rico/REPOS/neotest-java/tests/minimal_init.vim",
        },
        ["neotest-java"] = {},
      },
    },
  },
}
