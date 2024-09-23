-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- diagnostic を浮動ウィンドウで表示
vim.keymap.set("n", "<S-C-k>", function()
  vim.diagnostic.open_float(nil, {
    focusable = true,
    format = function(diagnostic)
      return string.format("%s", diagnostic.message)
    end,
    suffix = function(diagnostic)
      return string.format("[%s: %s]", diagnostic.source, diagnostic.code)
    end,
    border = "rounded",
    width = 80,
    max_width = 100,
  })
end)
