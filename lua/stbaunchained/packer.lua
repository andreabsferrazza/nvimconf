vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use ('wbthomason/packer.nvim')
	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
	use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
	    "nvim-telescope/telescope-file-browser.nvim",
	    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
	  "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    requires = { 
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	      "MunifTanjim/nui.nvim",
	      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	    }
	}
	use "lukas-reineke/indent-blankline.nvim"
	use ({ 
		"catppuccin/nvim", 
		as = "catppuccin",
		config = function()
			vim.cmd.colorscheme "catppuccin"
		end
	})
	use {
	    'numToStr/Comment.nvim',
	    config = function()
		require('Comment').setup()
	    end
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
end)
