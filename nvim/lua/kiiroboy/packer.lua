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

    use { 'junegunn/fzf', run = ":call fzf#install()" }


	use { "catppuccin/nvim", as = "catppuccin" }


	use 'windwp/nvim-ts-autotag'

    use {
        'stevearc/oil.nvim',
        config = function() require('oil').setup() end
    }

end)

