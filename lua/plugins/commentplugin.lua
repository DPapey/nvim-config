return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  config = function()
    require("Comment").setup({
      mappings = {
        -- disable the default `gc` and `gb` keymaps:
        basic = false,
        extra = false,
      },
    })
  end,
}
