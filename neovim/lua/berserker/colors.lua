-- Set colorscheme
vim.api.nvim_command([[
  augroup ClearBackground
    autocmd ColorScheme * highlight Normal guibg=NONE ctermbg = NONE
    autocmd ColorScheme * highlight NonText guibg=NONE ctermbg = NONE
  augroup END
]])
vim.o.termguicolors = true
