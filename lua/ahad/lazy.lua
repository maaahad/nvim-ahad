local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- lazy setup 

require("lazy").setup({{ import =  "ahad.plugins"}, {import = "ahad.plugins.lsp"}}, {
  checker = {
    enabled = true, 
    notify = false, 
  }, 
  change_detection = {
    notify = false, 
  }, 
})
