return {
  -- Alpha Dashboard
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    opts = function()
      local dashboard = require('alpha.themes.dashboard')
      dashboard.section.header.val = {
        ' ⚡ ZERO.NVIM ',
        '───────────────',
        ' Modern Neovim ',
      }
      dashboard.section.buttons.val = {
        dashboard.button('f', '🔍 Find File', '<cmd> Telescope find_files <cr>'),
        dashboard.button('n', '📝 New File', '<cmd> enew <cr>'),
        dashboard.button('r', '🕒 Recent Files', '<cmd> Telescope oldfiles <cr>'),
        dashboard.button('g', '🔀 Find Text', '<cmd> Telescope live_grep <cr>'),
        dashboard.button('c', '⚙️ Configuration', '<cmd> Telescope find_files cwd=/Users/zeropse/Developer/zero.nvim <cr>'),
        dashboard.button('q', '❌ Quit', '<cmd> qa <cr>'),
      }
      return dashboard
    end,
    config = function(_, opts)
      require('alpha').setup(opts.opts)
    end,
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
        mode = 'buffers',
        diagnostics = 'nvim_lsp',
        always_show_bufferline = true,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    },
  },

  -- Lualine Statusline
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
        theme = 'nord',
        globalstatus = true,
        component_separators = { left = '│', right = '│' },
        section_separators = { left = '', right = '' },
      },
    },
  },
}
