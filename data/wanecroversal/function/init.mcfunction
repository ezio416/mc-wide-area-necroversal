# c 2024-12-26
# m 2024-12-27

execute store result storage wanecroversal:respawn_args radius int 1 \
    run gamerule spawnRadius
execute in minecraft:overworld \
    run function wanecroversal:respawn with storage wanecroversal:respawn_args

tellraw @s [\
    {"text":"Welcome to the",                                                   "color":"#00DD00"},\
    {"text":" Wide Area Necroversal (v1)",                                      "color":"#00DDFF"},\
    {"text":" datapack! When you die, you will respawn anywhere up to ",        "color":"#00DD00"},\
    {"storage":"wanecroversal:respawn_args","nbt":"radius",                     "color":"#FFDD00"},\
    {"text":" blocks out from",                                                 "color":"#00DD00"},\
    {"text":" 0,0",                                                             "color":"#FFDD00"},\
    {"text":" in the Overworld (gamerule",                                      "color":"#00DD00"},\
    {"text":" spawnRadius",                                                     "color":"#FFDD00"},\
    {"text":").",                                                               "color":"#00DD00"},\
    {"text":" Beds and anchors do",                                             "color":"#FF8800"},\
    {"text":" not",                                                             "color":"#DD0000"},\
    {"text":" work.",                                                           "color":"#FF8800"},\
    {"text":" Strongholds generate in the Overworld every few thousand blocks.","color":"#00DD00"},\
    {"text":" This has only been tested in singleplayer!",                      "color":"#FF8800"}\
]

scoreboard players set @s wanecroversal.seen 1
