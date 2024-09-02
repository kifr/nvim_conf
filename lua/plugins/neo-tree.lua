return {
  "nvim-neo-tree/neo-tree.nvim",

  -- @see https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/defaults.lua
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    default_component_configs = {
      indent = {
        with_markers = false,
        expander_collapsed = "",
        expander_expanded = "",
      },
    },
  },
}
