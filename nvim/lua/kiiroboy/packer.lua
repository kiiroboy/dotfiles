-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use { 
		'ibhagwan/fzf-lua',
		-- optional for icon support
		requires = { 'nvim-tree/nvim-web-devicons' }
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/cmp-nvim-lsp'

	use 'hrsh7th/cmp-buffer'
	
	use 'hrsh7th/cmp-path'

	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/nvim-cmp'

	use 'onsails/lspkind.nvim'

	use 'windwp/nvim-ts-autotag'

	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})
	use({
		"nvimdev/lspsaga.nvim",
		requires = {
			{"nvim-tree/nvim-web-devicons"},
			--Please make sure you install markdown and markdown_inline parser
			{"nvim-treesitter/nvim-treesitter"}
		}
	})

    use {
        'stevearc/oil.nvim',
        config = function() require('oil').setup() end
    }

end)

