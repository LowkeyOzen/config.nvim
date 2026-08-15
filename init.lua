print "OzzVim"

require('config.lazy')
require("odin").setup({
    commands = {
        build = { "odin", "build", ".", "-debug" },
    },
})

vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- source the file
vim.keymap.set("n", "<space>x", ":.lua<CR>") --  run the curent line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute the selection

 -- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
