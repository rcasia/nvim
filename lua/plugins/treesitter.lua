return {
  -- Explicitly track the main branch (nvim-treesitter migrated away from master).
  -- nvim-treesitter-textobjects follows the same branch.
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
  },
}
