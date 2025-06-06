return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "ts_ls", "tailwindcss", "html", "cssls", "clangd" },
        })

        local lspconfig = require("lspconfig")

        -- TypeScript & JavaScript
        lspconfig.ts_ls.setup({})
        -- Tailwind CSS
        lspconfig.tailwindcss.setup({})
        -- HTML & CSS
        lspconfig.html.setup({})
        lspconfig.cssls.setup({})

        -- C/C++ with compile_commands folder set
        lspconfig.clangd.setup({
            cmd = { "clangd", "--compile-commands-dir=build" },
        })
    end,
}
