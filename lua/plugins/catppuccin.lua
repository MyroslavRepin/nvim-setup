return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        telescope = true,
        neo_tree = true,
        which_key = true,
        gitsigns = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end
}
