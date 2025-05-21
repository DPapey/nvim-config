--return {
--  "folke/tokyonight.nvim",
--  lazy = true,
--  priority = 1000,
--  opts = { style = "night",
--	transparent = false,},
--} 

return {
  "morhetz/gruvbox",
  lazy = false, -- Load immediately to set colorscheme on startup
  priority = 1000, -- Ensure it loads before other plugins that might depend on colorscheme

  config = function()
    -- Enable true colors
    vim.o.termguicolors = true
		vim.o.background = "light"

    -- Set Gruvbox specific options (optional)
    vim.g.gruvbox_contrast_dark = "hard" -- 'hard', 'medium', 'soft'
    -- vim.g.gruvbox_contrast_light = "hard" -- For light mode if you use it

    -- Set the colorscheme
    vim.cmd("colorscheme gruvbox")

    -- You can also set the background explicitly if needed (defaults to dark)
    -- vim.o.background = "light"
  end,
}



