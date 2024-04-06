return {
    -- plugin installer
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        cmd = { "Mason", "MasonInstall" },
        config = function()
          require("mason").setup()
        end,
      }
}