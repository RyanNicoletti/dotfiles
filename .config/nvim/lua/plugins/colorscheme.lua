return {
    {
        "EdenEast/nightfox.nvim",
      --  priority = 1000,
        config = function()
        require("nightfox").setup {
            groups = {
            all = { VertSplit = { fg = "bg3" } },
            },
        }
        end,
    },
    {
        "folke/tokyonight.nvim",
     --   priority = 1000,
        lazy = true,
        opts = { style = "moon" },
      },
      {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, 
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
          require("everforest").setup({
            -- Your config here
          })
        end,
      }
}