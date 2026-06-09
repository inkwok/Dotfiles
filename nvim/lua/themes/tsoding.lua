local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#000000",
  black = "#0a0a0a",
  black2 = "#121212",
  one_bg = "#1a1a1a",
  one_bg2 = "#222222",
  one_bg3 = "#2a2a2a",
  grey = "#444444",
  grey_fg = "#555555",
  grey_fg2 = "#666666",
  light_grey = "#777777",

  red = "#ffffff",
  baby_pink = "#ffffff",
  pink = "#ffffff",

  line = "#222222",

  green = "#00ff00",
  vibrant_green = "#00ff00",

  nord_blue = "#ffffff",
  blue = "#ffffff",

  yellow = "#ffd700", -- keywords
  sun = "#ffd700",

  purple = "#ffffff",
  dark_purple = "#ffffff",

  teal = "#ffffff",
  orange = "#ff8800", -- comments
  cyan = "#ffffff",

  statusline_bg = "#121212",
  lightbg = "#1f1f1f",
  pmenu_bg = "#ffd700",
  folder_bg = "#ffffff",
}

M.base_16 = {
  base00 = "#0a0a0a",
  base01 = "#1a1a1a",
  base02 = "#222222",
  base03 = "#444444",
  base04 = "#666666",
  base05 = "#ffffff", -- default text
  base06 = "#ffffff",
  base07 = "#ffffff",

  base08 = "#ffffff",
  base09 = "#ffffff",
  base0A = "#ffd700", -- keywords
  base0B = "#00ff00",
  base0C = "#ffffff",
  base0D = "#ffffff",
  base0E = "#ffd700", -- some keyword groups hit this
  base0F = "#ffffff",
}

M.type = "dark"

return M
