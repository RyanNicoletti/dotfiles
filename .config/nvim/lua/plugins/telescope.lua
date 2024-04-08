return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    cmd = "Telescope",
    version = false,
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-telescope/telescope-fzf-native.nvim' },
    keys = {
        { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (Root Dir)" },
        { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      
        -- find
        { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root Dir)" },
        { "<leader>fF", "<cmd>Telescope find_files cwd=./<cr>", desc = "Find Files (cwd)" },
        { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
        { "<leader>fR", "<cmd>Telescope oldfiles cwd=.<cr>", desc = "Recent (cwd)" },
      
        -- git
        { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
        { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
      
        -- search
        { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
        { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
        { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
        { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
        { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
        { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
        { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
        { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (Root Dir)" },
        { "<leader>sG", "<cmd>Telescope live_grep cwd=.<cr>", desc = "Grep (cwd)" },
        { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
        { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
        { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
        { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
        { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
        { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
        { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
        { "<leader>sw", "<cmd>Telescope grep_string word_match=-w<cr>", desc = "Word (Root Dir)" },
        { "<leader>sW", "<cmd>Telescope grep_string cwd=. word_match=-w<cr>", desc = "Word (cwd)" },
        { "<leader>sw", "<cmd>Telescope grep_string<cr>", mode = "v", desc = "Selection (Root Dir)" },
        { "<leader>sW", "<cmd>Telescope grep_string cwd=.<cr>", mode = "v", desc = "Selection (cwd)" },
        { "<leader>uC", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Colorscheme with Preview" },
        {
          "<leader>ss",
          function()
            require("telescope.builtin").lsp_document_symbols({
              symbols = {
                "Class", "Constructor", "Enum", "EnumMember", "Field", "Function", "Interface", "Module", "Property",
                "TypeParameter", "Variable",
              },
            })
          end,
          desc = "Goto Symbol",
        },
        {
          "<leader>sS",
          function()
            require("telescope.builtin").lsp_dynamic_workspace_symbols({
              symbols = {
                "Class", "Constructor", "Enum", "EnumMember", "Field", "Function", "Interface", "Module", "Property",
                "TypeParameter", "Variable",
              },
            })
          end,
          desc = "Goto Symbol (Workspace)",
        },
      }
}