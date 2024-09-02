-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require("ayu").setup({
  mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  terminal = true, -- Set to `false` to let terminal manage its own colors.
})
