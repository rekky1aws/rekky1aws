return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        {
          name = "bamboo",
          colorscheme = "bamboo"
        }, {
        name = "catppuccin",
        colorscheme = "catppuccin"
      }
      },
      livePreview = true,
    })
  end
}
