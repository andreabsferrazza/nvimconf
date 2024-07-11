-- guarantees catppuccin
function MinimumColor(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

MinimumColor()
		
function TransparentBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- TransparentBackground()

