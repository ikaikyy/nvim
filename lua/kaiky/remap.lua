local telescopeBuiltin = require("telescope/builtin")
local trouble = require("trouble")
local conform = require("conform")

vim.g.mapleader = " "

-- NVim
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sv", vim.cmd.w)

-- Telescope
vim.keymap.set("n", "<leader>ff", telescopeBuiltin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescopeBuiltin.live_grep, {})

-- Trouble
vim.keymap.set("n", "<leader>td", function()
	trouble.toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>tw", function()
	trouble.toggle("workspace_diagnostics")
end)

-- Conform
vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
	conform.format({
		lsp_fallback = true,
		async = false,
	})
end, { desc = "Format file or range (in visual mode)" })
