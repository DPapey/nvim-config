return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "astro", "tsx", "typescript", "html", "css", "java", "json", "javascript" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

