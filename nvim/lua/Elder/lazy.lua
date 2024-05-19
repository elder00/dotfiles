local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
	{"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate"},
	{'nvim-lua/plenary.nvim'},
	{'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { 'nvim-lua/plenary.nvim' }},
	{"olimorris/onedarkpro.nvim"},
	{"tomasiser/vim-code-dark"},
	{"sainnhe/everforest"},
	{"sainnhe/sonokai"},
	{"sainnhe/gruvbox-material"},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{"L3MON4D3/LuaSnip",
  	dependencies = { "rafamadriz/friendly-snippets" },},
	{"rafamadriz/friendly-snippets"},
	{'saadparwaiz1/cmp_luasnip'},
	{'windwp/nvim-autopairs',event = "InsertEnter",config = true}
}
