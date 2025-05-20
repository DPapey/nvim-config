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

-- Load Plugins from the 'plugins' directory
require("lazy").setup("plugins")
vim.opt.guifont = "FiraCode Nerd Font:h14"
vim.cmd("colorscheme tokyonight")

