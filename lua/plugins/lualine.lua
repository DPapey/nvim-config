
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                section_separators = "",
                component_separators = "|",
                icons_enabled = true, -- fixed typo from "icons_enable"
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { { "filename", path = 1 } },
                lualine_x = { "encoding", "fileformat", "filetype" }, -- fixed quotes and syntax
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
        })
    end,
}
