local api = vim.api

-- insert mode にて Tab と Shift+Tab でインデント調整
api.nvim_set_keymap('i', '<Tab>', '<C-t>', { noremap = true, silent = true })
api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


