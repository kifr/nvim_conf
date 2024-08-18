require('base')
require('jetpack')

-- insert mode にて Tab と Shift+Tab でインデント調整
vim.api.nvim_set_keymap('i', '<Tab>', '<C-t>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

-- PLUGINS
-- FIXME: 各種プラグインの設定は別ファイルにしたいが、not found エラーが起きるため、とりあえず 1 ファイルにまとめている

vim.api.nvim_set_hl(0, 'Visual', {bg="#666666"})


require('ext.ayu')
require('ext.nvim-tree')
require('ext.mason')
require('ext.cmp')
require('ext.lsp')
require('ext.toggleterm')
