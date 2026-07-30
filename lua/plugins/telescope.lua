return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable('make') == 1
      end,
    },
  },
  keys = {
    { '<leader>sf', '<cmd>Telescope find_files hidden=true<cr>', desc = '[S]earch [F]iles' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>', desc = '[S]earch by [G]rep' },
    { '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = '[S]earch [H]elp' },
    { '<leader>sw', '<cmd>Telescope grep_string<cr>', desc = '[S]earch Current [W]ord' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>', desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<cr>', desc = '[S]earch [R]esume' },
    { '<leader>s.', '<cmd>Telescope oldfiles<cr>', desc = '[S]earch Recent Files' },
    { '<leader><leader>', '<cmd>Telescope buffers<cr>', desc = 'Find Existing Buffers' },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { 'node_modules', '%.git/', '%.venv/' },
      mappings = {
        i = {
          ['<C-j>'] = function(...)
            return require('telescope.actions').move_selection_next(...)
          end,
          ['<C-k>'] = function(...)
            return require('telescope.actions').move_selection_previous(...)
          end,
        },
      },
    },
  },
}
