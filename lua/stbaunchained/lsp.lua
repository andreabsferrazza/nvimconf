local lsp = require('lsp-zero')
lsp.preset('recommended')
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { 
		"clangd",
		"intelephense"
		-- "sumneko_lua"
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})
lsp.on_attach( function(client,bufnr)
	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.vws() end, opts)
	vim.keymap.set('n', '<leader>vd', function() vim.lsp.buf.open_float() end, opts)
	vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set('n', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
