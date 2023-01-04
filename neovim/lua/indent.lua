-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('indent_blankline').setup {
  space_char_blankline = " ",
  char = '┊',
  show_trailing_blankline_indent = false,
  show_current_context = true,
  show_current_context_start = true,
}
