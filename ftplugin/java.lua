local jdtls_py = vim.fn.stdpath("data") .. "/mason/packages/jdtls/bin/jdtls"
-- pyenv's python3 shim hangs; use a real python3 directly
local python3 = vim.fn.executable("/opt/homebrew/bin/python3") == 1
    and "/opt/homebrew/bin/python3"
  or "/usr/bin/python3"

local root = vim.fs.root(0, { "mvnw", "gradlew", "pom.xml", "build.gradle", ".git" })
if not root then
  return
end

local project_name = vim.fn.fnamemodify(root, ":p:h:t")
local workspace = vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"

vim.lsp.start({
  name = "jdtls",
  cmd = { python3, jdtls_py, "-data", workspace },
  root_dir = root,
  filetypes = { "java" },
})
