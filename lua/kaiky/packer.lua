vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		"wbthomason/packer.nvim",
		"rstacruz/vim-closer",
		"lunarvim/lunar.nvim",
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	use("stevearc/conform.nvim")

	use({ "folke/trouble.nvim", requires = {
		{ "nvim-tree/nvim-web-devicons" },
	} })
end)
