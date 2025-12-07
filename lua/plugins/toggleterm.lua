return {
  -- other plugins ...
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- put any options here you want to customize
        size = 20,
        open_mapping = [[<c-\>]],
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "tab",  -- can be "vertical", "horizontal", "float", or "tab"
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },
}

