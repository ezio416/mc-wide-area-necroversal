# c 2024-12-26
# m 2024-12-27

trigger wanecroversal.respawn

tellraw @s [\
    {"text":"You died at ",                            "color":"#DD0000"},\
    {"nbt":"LastDeathLocation.pos[0]","entity":"@s",   "color":"#FFDD00"},\
    {"text":", ",                                      "color":"#DD0000"},\
    {"nbt":"LastDeathLocation.pos[1]","entity":"@s",   "color":"#FFDD00"},\
    {"text":", ",                                      "color":"#DD0000"},\
    {"nbt":"LastDeathLocation.pos[2]","entity":"@s",   "color":"#FFDD00"},\
    {"text":" in ",                                    "color":"#DD0000"},\
    {"nbt":"LastDeathLocation.dimension","entity":"@s","color":"#FFDD00"},\
    {"text":".",                                       "color":"#DD0000"}\
]
tellraw @s [\
    {"text":"Good job. Now you're ",   "color":"#FF8800"},\
    {"text":"somewhere.","italic":true,"color":"#FF8800"}\
]
