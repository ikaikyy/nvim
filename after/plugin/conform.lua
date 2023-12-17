local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		javascript = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
		javascriptreact = { "prettierd", "prettier" },
		typescriptreact = { "prettierd", "prettier" },
		css = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		json = { "prettierd", "prettier" },
		yaml = { "prettierd", "prettier" },
		markdown = { "prettierd", "prettier" },
		graphql = { "prettierd", "prettier" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		lua = { "stylua" },
		go = { "goimports" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
	conform.format({
		lsp_fallback = true,
		async = false,
	})
end, { desc = "Format file or range (in visual mode)" })
