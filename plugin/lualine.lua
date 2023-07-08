require("lsp-progress").setup({
    console_log = true,
    debug = false,
    file_log = false,
})

local function LspIcon()
    return require("lsp-progress").progress({
        format = function(messages)
            local active_clients = vim.lsp.get_active_clients()
            local client_count = #active_clients
            if #messages > 0 then
                return " LSP:"
                    .. client_count
                    .. " "
                    .. table.concat(messages, " ")
            end
            if #active_clients <= 0 then
                return " LSP:" .. client_count
            else
                local client_names = {}
                for i, client in ipairs(active_clients) do
                    if client and client.name ~= "" then
                        table.insert(client_names, "[" .. client.name .. "]")
                        -- print( "client[" .. i .. "]:" .. vim.inspect(client.name))
                    end
                end
                return " LSP:"
                    .. client_count
                    .. " "
                    .. table.concat(client_names, " ")
            end
        end,
    })
end

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
        lualine_a = { 'mode' },
        lualine_b = {
            {
                'branch',
                icon = '',
            },
            {
                'diff',
                symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            },
            'diagnostics' },
        lualine_c = {
            {
                'filename',
                file_status = true,
                path = 1,
            },
            LspIcon,
        },
        lualine_x = {
            -- 'encoding',
            -- { 'fileformat', icons_enabled = false },
            'filetype',
        },
        lualine_y = { 'progress', 'location' },
        lualine_z = {
            "os.date('%a %I:%M %p')"
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = { "branch" },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

-- refresh lualine
vim.cmd([[
augroup lualine_augroup
    autocmd!
    autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
augroup END
]])
