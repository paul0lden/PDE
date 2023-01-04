-- List of preisntalled lsp servers
-- corespondings configs are located inside settings folder
-- configs must be named just as servers
local servers = {
  'sumneko_lua',
  'pyright',
  'jsonls',
  'cssls',
  'html',
  'tsserver',
  'bashls',
}

-- Mason(lsp-servers manager) settings
local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_installation = true,
})

-- Check if lspconfig(lsp is nvim language server proccessor) is install and ready
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

-- Map server configs from settings dir to lsp
for _, server in pairs(servers) do
  opts = {
    -- 
    on_attach = require("user.lsp.handlers").on_attach,
    -- get supported features (like snipets, complitions, etc...)
    capabilities = require("user.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
  if require_ok then
    opts = vim.tbl_deep_extend("force", conf_opts, opts)
  end

  lspconfig[server].setup(opts)
end
