require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = ' ',
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
        lualine_a = {'mode'},
        lualine_b = {
            {
                'branch',
                icon = '',
            },
            {
                'diff',
                symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            },
            'diagnostics'},
        lualine_c = {
            {
                'filename',
                file_status = true,
                path = 1,
            },
            'filesize'},
        lualine_x = {'encoding',
            {'fileformat'},
            {
                -- Lsp server name .
                function()
                    local msg = 'No Active Lsp'
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_active_clients()
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end,
                icon = ' LSP:',
            },
            'filetype',
        },
        lualine_y = {'progress'},
    lualine_z = {'location'}
  },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {"branch"},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
