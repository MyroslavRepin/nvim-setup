vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Show line numbers
vim.o.number = true

-- Sync clipboard with OS
vim.schedule(function() 
  vim.o.clipboard = 'unnamedplus' 
end)

-- Ask to save unsaved changes instead of failing
vim.o.confirm = true

-- Smart case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Inline messages config
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = true,
})
