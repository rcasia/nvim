local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"

local root = vim.fs.root(0, { "mvnw", "gradlew", "pom.xml", "build.gradle", ".git" })
if not root then
  return
end

local project_name = vim.fn.fnamemodify(root, ":p:h:t")
local workspace = vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"

vim.lsp.start({
  name = "jdtls",
  cmd = { jdtls_bin, "-data", workspace },
  root_dir = root,
  filetypes = { "java" },
})
