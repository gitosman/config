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
  cmd = { "verible-verilog-ls" },
  filetypes = { "systemverilog" },
  root_markers = { ".git", "verible.rules" },
}

vim.lsp.enable("verible")

vim.keymap.set("n", "ff", vim.diagnostic.open_float)

vim.opt.signcolumn = "yes"
