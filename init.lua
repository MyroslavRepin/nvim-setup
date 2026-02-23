-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Loading plugins, configs
require("vim-options")
require("lazy").setup("plugins")

-- Loading tressitter
--local ok, config = pcall(require, "nvim-treesitter.configs")
--if ok then
--  config.setup({
--    ensure_installed = {"lua", "javascript"},
--    highlight = { enabled = true },
--    indent = { enabled = true }
--  })
--end

