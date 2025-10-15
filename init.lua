-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Custom Config --
require("config.lspconfig")

vim.g.neovide_cursor_animation_length = 0.15
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = "railgun" -- alternative: railgun, torpedo, pixiedust

vim.g.neovide_scroll_animation_length = 0.3

vim.g.neovide_opacity = 0.9
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

vim.env.PYTHONPATH = os.getenv("PYTHONPATH")
