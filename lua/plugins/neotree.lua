return {
  'nvim-neo-tree/neo-tree.nvim',
  cmd = 'Neotree',
  keys = {
    { '<leader>e', '<cmd>Neotree toggle position=left<cr>', desc = 'Explorer NeoTree (left)' },
    { '<leader>ngs', '<cmd>Neotree float git_status<cr>', desc = 'NeoTree Float Git Status' },
  },
  opts = {
    close_if_last_window = false,
    popup_border_style = 'rounded',
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          '.DS_Store',
          'thumbs.db',
          'node_modules',
          '__pycache__',
          '.venv',
        },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      hijack_netrw_behavior = 'open_default',
    },
    window = {
      position = 'left',
      width = 40,
    },
  },
}
