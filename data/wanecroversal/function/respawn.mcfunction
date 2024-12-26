# c 2024-12-21
# m 2024-12-26

scoreboard players reset @s wanecroversal.deaths
$spreadplayers 0 0 1 $(radius) false @s

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
