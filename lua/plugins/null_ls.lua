return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local none_ls = require("null-ls")

        none_ls.setup({
            sources = {
                -- 📌 Formatting
                none_ls.builtins.formatting.prettier, -- JS/TS/HTML/CSS formatting
                none_ls.builtins.formatting.stylua, -- Lua formatting        
                -- 📌 Linting
               -- none_ls.builtins.diagnostics.eslint, -- ESLint for JS/TS

                -- ❌ Removed `lacheck`
            },
        })
    end,
}
