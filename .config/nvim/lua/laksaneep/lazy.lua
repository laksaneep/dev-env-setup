local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- local plugin = {
--   { "catppuccin/nvim", name = "catppuccin", priority = 1000 } 
-- }
-- local opt = {} 

-- require("lazy").setup(plugin,opt)

-- require("catppuccin").setup()
-- vim.cmd.colorscheme "catppuccin"


require("lazy").setup({ { import = "laksaneep.plugins" }, { import = "laksaneep.plugins.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  extensions = {
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
    }
  }
})

vim.cmd.colorscheme "catppuccin"


