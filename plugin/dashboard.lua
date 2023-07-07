local db = require('dashboard')

local hyper = {
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope fd',
          key = 'f',
        },
        {
          desc = ' Git Status',
          group = 'DiagnosticHint',
          action = 'Telescope git_status',
          key = 'g',
        },
        {
          desc = ' Nvim Config',
          group = 'Number',
          action = 'Ex C:/Users/Azmain/AppData/Local/nvim',
          key = 'd',
        },
      },
    },
}

db.setup(hyper)
