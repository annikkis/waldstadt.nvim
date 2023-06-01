<div align="center">
  <h1>waldstadt</h1>
</div>

A theme for Neovim with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) support!

# Prerequisites
Neovim 0.8.0+

# Installing
Using `lazy.nvim`

```lua
{ "annikkis/waldstadt.nvim" }
```

# Basic Usage
Inside `init.vim`
```vim
set background=dark " or light if you want light mode
colorscheme waldstadt
```

Inside `init.lua`
```lua
vim.o.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("waldstadt")
```

# Configuration
Additional settings for waldstadt are:

```lua
-- setup must be called before loading the colorscheme
-- Default options:

require("waldstadt").setup {
  underline = true,
  strikethrough = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    folds = true,
  },
  inversion = {
    cursor = true,
    visual = false,
    search = true,
    diagnostic = false,
    diff = false,
  },
  overrides = {
    colors = {},
    highlights = {},
  }
}
vim.cmd.colorscheme("waldstadt")
```

## Overriding
### Palette
You can specify your own palette colors. Default colors:

```lua
require("waldstadt").setup {
  overrides = {
    colors = {
      dark0 = "#100f0d",
      dark1 = "#201f1d",
      dark2 = "#282725",
      dark3 = "#383735",
      dark4 = "#484442",
      dark5 = "#504c4a",
      light0 = "#f4ecd8",
      light1 = "#e4dcc8",
      light2 = "#dcd4c0",
      light3 = "#ccc4b0",
      light4 = "#bcb7a3",
      light5 = "#b4af9b",
      gray0 = "#787b78",
      gray1 = "#888d88",
      gray2 = "#989f98",
      green0 = "#628804",
      green1 = "#82a824",
      blue0 = "#628488",
      blue1 = "#82a4a8",
      aqua0 = "#428864",
      aqua1 = "#62a884",
      purple0 = "#646288",
      purple1 = "#8482a8",
      pink0 = "#886264",
      pink1 = "#a88284",
      red0 = "#a82204",
      red1 = "#c84224",
      orange0 = "#a86204",
      orange1 = "#c88224",
      yellow0 = "#a88402",
      yellow1 = "#c8a422",
    }
  }
}
vim.cmd.colorscheme("waldstadt")
```
More colors in the [palette.lua](lua/waldstadt/palette.lua) file

### Highlight groups
If you don't enjoy the current color for a specific highlight group, now you can just override it in the setup. For example:

```lua
require("waldstadt").setup {
  overrides = {
    highlights = {
      CursorLine = { bg = "#383735" },
    }
  }
}
vim.cmd.colorscheme("waldstadt")
```
