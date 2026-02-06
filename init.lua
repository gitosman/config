vim.opt.winborder = "rounded"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.showtabline = 2
vim.opt.wrap = false
vim.opt.cursorcolumn = false
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.number = true

vim.pack.add({
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" } 
})

vim.lsp.config.verible = {
  cmd = {
		"verible-verilog-ls",
		"--nopush_diagnostic_notifications",
    },
  filetypes = { "systemverilog" },
  root_markers = { ".git", "verible.rules" },
}

vim.lsp.enable("verible")

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '<space>a', vim.lsp.buf.code_action, bufopts)

vim.opt.signcolumn = "yes"
