-- TabBar setup

require('bufferline').setup({
  animation = true,
  auto_hide = true,
  tabpages = true,
  closable = true,
  clickable = true,
  diagnostics = {
    [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
    [vim.diagnostic.severity.WARN] = { enabled = false },
    [vim.diagnostic.severity.INFO] = { enabled = false },
    [vim.diagnostic.severity.HINT] = { enabled = true },
  },
  icons = true,
  minimum_padding = 1,
  maximum_length = 15,
})
