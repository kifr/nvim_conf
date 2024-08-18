require('toggleterm').setup{
  size = 10,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2, -- ターミナルの透明度を設定 (1-3)
  start_in_insert = true,
  insert_mappings = true, -- insert mode でも open_mapping を使用
  terminal_mappings = true, -- terminal mode でも open_mapping を使用
  persist_size = true,
  direction = 'horizontal', -- 'vertical'|'horizontal'|'tab'|'float'
  close_on_exit = true, -- プロセス終了時にターミナルを閉じる
  shell = vim.o.shell, -- デフォルトのシェルを使用
  float_opts = {
    border = 'single', -- 'single', 'double', 'shadow', 'curved' のいずれか
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
