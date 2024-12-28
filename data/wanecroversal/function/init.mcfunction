# c 2024-12-26
# m 2024-12-28

execute store result score @s wanecroversal.radius \
    run gamerule spawnRadius
scoreboard players enable @s wanecroversal.radius

tellraw @s [\
    {"text":"Welcome to the",                                                   "color":"#00DD00"},\
    {"text":" Wide Area Necroversal (v1)",                                      "color":"#00DDFF"},\
    {"text":" datapack! When you die, you will respawn anywhere up to ",        "color":"#00DD00"},\
    {"score":{"name":"@s","objective":"wanecroversal.radius"},                  "color":"#FFDD00"},\
    {"text":" blocks out from",                                                 "color":"#00DD00"},\
    {"text":" 0,0",                                                             "color":"#FFDD00"},\
    {"text":" in the Overworld.",                                               "color":"#00DD00"},\
    {"text":" Beds and anchors do",                                             "color":"#FF8800"},\
    {"text":" not",                                                             "color":"#DD0000"},\
    {"text":" work.",                                                           "color":"#FF8800"},\
    {"text":" Strongholds generate in the Overworld every few thousand blocks.","color":"#00DD00"},\
    {"text":" Only tested in singleplayer!",                                    "color":"#FF8800"},\
    {"text":"\n\nTo change your spawn radius, run",                             "color":"#DD66DD"},\
    {"text":"\n/trigger wanecroversal.radius set <value>",                      "color":"#FFDD00"},\
    {"text":"\n\nTo respawn manually, run",                                     "color":"#DD66DD"},\
    {"text":"\n/trigger wanecroversal.respawn",                                 "color":"#FFDD00"}\
]

scoreboard players set @s wanecroversal.respawn 1
scoreboard players set @s wanecroversal.seen 1
