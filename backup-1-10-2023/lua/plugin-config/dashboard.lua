local status, db = pcall(require, "dashboard")

if not status then
  vim.notify("Dashboard Not Found")
  return
end

db.custom_footer = {
  "",
  "",
  "https://github.com/vipakun/nvim",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
}


db.custom_header = {
    '',
    '',
    '                                          ',
    '                                          ',
    'XXXXXXX       XXXXXXXYYYYYYY       YYYYYYY',
    'X:::::X       X:::::XY:::::Y       Y:::::Y',
    'X:::::X       X:::::XY:::::Y       Y:::::Y',
    'X::::::X     X::::::XY::::::Y     Y::::::Y',
    'XXX:::::X   X:::::XXXYYY:::::Y   Y:::::YYY',
    '   X:::::X X:::::X      Y:::::Y Y:::::Y   ',
    '    X:::::X:::::X        Y:::::Y:::::Y    ',
    '     X:::::::::X          Y:::::::::Y     ',
    '     X:::::::::X           Y:::::::Y      ',
    '    X:::::X:::::X           Y:::::Y       ',
    '   X:::::X X:::::X          Y:::::Y       ',
    'XXX:::::X   X:::::XXX       Y:::::Y       ',
    'X::::::X     X::::::X       Y:::::Y       ',
    'X:::::X       X:::::X    YYYY:::::YYYY    ',
    'X:::::X       X:::::X    Y:::::::::::Y    ',
    'XXXXXXX       XXXXXXX    YYYYYYYYYYYYY    ',
    '                                          ',
    '                                          ',
    '                                          ',
    '                                          ',
    '                                          ',
    '                                          ',
    '                                          ',
    '',
    '',
}
