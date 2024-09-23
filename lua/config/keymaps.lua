-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key_mappings = {
  -- indentation
  { "n", "<Tab>", ">>", { noremap = true, silent = true } },
  { "n", "<S-Tab>", "<<", { noremap = true, silent = true } },
  { "v", "<Tab>", ">gv", { noremap = true, silent = true } },
  { "v", "<S-Tab>", "<gv", { noremap = true, silent = true } },
}

for _, map in ipairs(key_mappings) do
  vim.api.nvim_set_keymap(map[1], map[2], map[3], map[4])
end

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
