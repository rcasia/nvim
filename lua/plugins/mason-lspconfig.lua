return {
  -- Pin mason-lspconfig to v1.x to maintain compatibility with LazyVim's
  -- use of the `mappings.server` module, which was removed in v2.x.
  {
    "williamboman/mason-lspconfig.nvim",
    tag = "v1.32.0",
  },
}
