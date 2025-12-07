return {

	{
	"mason-org/mason.nvim",
	opts = {}
	},
	{
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	{
  	'mrcjkb/rustaceanvim',
  	version = '^6', -- Recommended
  	lazy = false, -- This plugin is already lazy
	},
},
}
