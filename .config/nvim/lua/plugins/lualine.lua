return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local colors = {
                blue   = '#80a0ff',
                cyan   = '#79dac8',
                black  = '#080808',
                white  = '#c6c6c6',
                red    = '#ff5189',
                violet = '#d183e8',
                grey   = '#303030',
              }
              
              local bubbles_theme = {
                normal = {
                  a = { fg = colors.black, bg = colors.violet },
                  b = { fg = colors.white, bg = colors.grey },
                  c = { fg = colors.white },
                },
              
                insert = { a = { fg = colors.black, bg = colors.blue } },
                visual = { a = { fg = colors.black, bg = colors.cyan } },
                replace = { a = { fg = colors.black, bg = colors.red } },
              
                inactive = {
                  a = { fg = colors.white, bg = colors.black },
                  b = { fg = colors.white, bg = colors.black },
                  c = { fg = colors.white },
                },
              }
              local get_lsp_client = function()
                local clients = vim.lsp.get_active_clients()
                for _, client in pairs(clients) do
                  if client.attached_buffers[vim.api.nvim_get_current_buf()] then
                    return client.name
                  end
                end
                return ''
              end        
              
              require('lualine').setup {
                options = {
                  theme = bubbles_theme,
                  component_separators = '',
                  section_separators = { left = '', right = '' },
                },
                sections = {
                  lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                  lualine_b = { 'filename', 'branch' },
                  lualine_c = {
                    { get_lsp_client, icon = ' lsp:', separator = { right = '' }, padding = { right = 1 } },
                     '%=',
                  },
                  lualine_x = {},
                  lualine_y = { 'filetype', 'progress' },
                  lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                  },
                },
                inactive_sections = {
                  lualine_a = { 'filename' },
                  lualine_b = {},
                  lualine_c = {},
                  lualine_x = {},
                  lualine_y = {},
                  lualine_z = { 'location' },
                },
                tabline = {},
                extensions = {},
              }
        end
    }
}