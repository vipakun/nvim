local db = require('dashboard')

db.custom_footer = {
  "",
  "",
  "https://github.com/vipakun/nvim",
}
db.preview_file_height = 11
db.preview_file_width = 70
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
    desc = "Edit Keymaps                        ",
    action = "edit ~/.config/nvim/lua/core/keymaps.lua",
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

