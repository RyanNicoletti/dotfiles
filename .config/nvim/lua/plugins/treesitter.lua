return {
    -- treesitter for syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        ensure_installed = { "lua", "vim", "vimdoc", "tsx", "html", "css", "typescript", "javascript", "go", "rust", "c", "cpp", "python" },
        highlight = {
            enable = true,
            use_languagetree = true,
        },
        indent = { enable = true },
        config = function()
            require("nvim-treesitter").setup()
          end,
      }
}