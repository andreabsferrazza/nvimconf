require("stbaunchained")
require("plugins")
vim.wo.number = true
require("ibl").setup()
vim.cmd.colorscheme "catppuccin"
require('Comment').setup()
require("lsp_config")
