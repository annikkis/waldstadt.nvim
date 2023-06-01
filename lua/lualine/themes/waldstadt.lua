local palette = require("waldstadt.palette").setup()

return {
  normal = {
    a = { fg = palette.bg1, bg = palette.green },
    b = { fg = palette.fg4, bg = palette.bg4 },
    c = { fg = palette.fg3, bg = palette.bg3 },
  },
  insert = { a = { fg = palette.bg1, bg = palette.blue } },
  replace = { a = { fg = palette.bg1, bg = palette.red } },
  visual = { a = { fg = palette.bg1, bg = palette.yellow } },
  command = { a = { fg = palette.bg1, bg = palette.aqua } },
  terminal = { a = { fg = palette.bg1, bg = palette.purple } },
  inactive = { a = { fg = palette.fg1, bg = palette.bg5 } }
}
