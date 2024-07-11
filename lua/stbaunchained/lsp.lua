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
end)

lsp.setup()
