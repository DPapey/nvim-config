-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lazy.nvim Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
"https://github.com/folke/lazy.nvim.git", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    command = "setlocal nofoldenable"
})

vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

-- Load Plugins from the 'plugins' directory
require("lazy").setup("plugins")

vim.cmd([[
  syntax reset
  highlight clear
  highlight Normal ctermbg=NONE guibg=NONE
]])
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]])


vim.cmd("colorscheme tokyonight")
--vim.cmd("colorscheme carbonfox")

--vim.cmd("colorscheme gruvbox")
--True Colour

