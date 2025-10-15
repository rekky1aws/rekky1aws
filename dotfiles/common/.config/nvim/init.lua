vim.cmd("set number")
vim.cmd("set listchars=eol:↵,trail:~,tab:>-,nbsp:␣")
vim.cmd("set list")
vim.cmd("set shiftwidth=3")
vim.cmd("set tabstop=3")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=3")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local plugins = {
   { 
      "catppuccin/nvim",
      priority = 1000 
   },
   { 
      "nvim-telescope/telescope.nvim", 
      tag = "0.1.8",
      dependencies = { "nvim-lua/plenary.nvim" }
   },
   { 
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate"
   },
   { 
      "nvzone/typr",
      dependencies = "nvzone/volt",
      opts = {},
      cmd = { "Typr", "TyprStats" },
   },
   {
      "m4xshen/autoclose.nvim"
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
      opts = {},
   }
}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

local config = require("nvim-treesitter.configs")
config.setup({
   ensure_installed = {
      "lua",
      "javascript",
      "vimdoc",
      "luadoc",
      "vim",
      "markdown",
   },
   highlight = { enable = true },
   indent = { enable = true }
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

require("autoclose").setup()

require("ibl").setup()
