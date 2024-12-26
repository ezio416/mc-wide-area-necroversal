# c 2024-12-26
# m 2024-12-26

function wanecroversal:respawn with storage wanecroversal:respawn_args

tellraw @s [\
    {"text":"You died at ","color":"red"},\
    {"nbt":"LastDeathLocation.pos[0]","entity":"@s","color":"#FFDD00"},\
    {"text":", ","color":"red"},\
    {"nbt":"LastDeathLocation.pos[1]","entity":"@s","color":"#FFDD00"},\
    {"text":", ","color":"red"},\
    {"nbt":"LastDeathLocation.pos[2]","entity":"@s","color":"#FFDD00"},\
    {"text":" in ","color":"red"},\
    {"nbt":"LastDeathLocation.dimension","entity":"@s","color":"#FFDD00"},\
    {"text":".","color":"red"}\
]
tellraw @s [{"text":"Good job. Now you're ","color":"#FF8800"},{"text":"somewhere.","color":"#FF8800","italic":true}]
