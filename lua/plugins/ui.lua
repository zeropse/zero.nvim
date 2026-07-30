return {
  -- Native Snacks Dashboard
  {
    'folke/snacks.nvim',
    opts = {
      dashboard = {
        preset = {
          header = [[
 ⚡ ZERO.NVIM 
───────────────
 Modern Neovim 
          ]],
        },
      },
    },
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
