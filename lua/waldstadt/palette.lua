local M = {}

M.colors = {
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

M.setup = function()
  local config = require("waldstadt").config
  local colors = M.colors

  for key, value in pairs(config.overrides.colors) do
    colors[key] = value
  end

  local palette = {
    dark = {
      bg0 = colors.dark0,
      bg1 = colors.dark1,
      bg2 = colors.dark2,
      bg3 = colors.dark3,
      bg4 = colors.dark4,
      bg5 = colors.dark5,
      fg0 = colors.light0,
      fg1 = colors.light1,
      fg2 = colors.light2,
      fg3 = colors.light3,
      fg4 = colors.light4,
      fg5 = colors.light5,
      gray0 = colors.gray0,
      gray1 = colors.gray1,
      gray2 = colors.gray2,
      green = colors.green1,
      blue = colors.blue1,
      aqua = colors.aqua1,
      purple = colors.purple1,
      pink = colors.pink1,
      red = colors.red1,
      orange = colors.orange1,
      yellow = colors.yellow1,
    },
    light = {
      bg0 = colors.light0,
      bg1 = colors.light1,
      bg2 = colors.light2,
      bg3 = colors.light3,
      bg4 = colors.light4,
      bg5 = colors.light5,
      fg0 = colors.dark0,
      fg1 = colors.dark1,
      fg2 = colors.dark2,
      fg3 = colors.dark3,
      fg4 = colors.dark4,
      fg5 = colors.dark5,
      gray0 = colors.gray0,
      gray1 = colors.gray1,
      gray2 = colors.gray2,
      green = colors.green0,
      blue = colors.blue0,
      aqua = colors.aqua0,
      purple = colors.purple0,
      pink = colors.pink0,
      red = colors.red0,
      orange = colors.orange0,
      yellow = colors.yellow0,
    },
  }

  return palette[vim.o.background]
end

return M
