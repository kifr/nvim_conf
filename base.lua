local opt = vim.opt

-- 「※」等の記号を打つと、半角文字と重なる問題がある
-- 「※」などを全角文字の幅で表示するために設定する
opt.ambiwidth = 'double'

opt.cursorline = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- TAB キー押下で2文字分の幅を持ったTABが表示される
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

-- tabstop で設定した数の分の半角スペースを挿入する
opt.expandtab = true

-- yank操作をシステムクリップボードと連動させる設定
opt.clipboard:append("unnamedplus")

-- 自動インデントを挿入する
opt.smartindent = true

-- 行番号を表示する
opt.number = true

-- カーソル行からの相対行番号を表示する
opt.relativenumber = true

-- swap ファイルを作成させない
opt.swapfile = false

-- 表示オプションを有効化
opt.list = true

-- 表示文字の設定
opt.listchars = {tab = '>-', trail = '*', nbsp = '+'}

-- カラー
opt.termguicolors = true

local api = vim.api
api.nvim_set_hl(0, 'Visual', {bg="#666666"})
