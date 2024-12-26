# c 2024-12-26
# m 2024-12-26

execute store result storage wanecroversal:respawn_args radius int 1 \
    run gamerule spawnRadius
execute in minecraft:overworld \
    run function wanecroversal:respawn with storage wanecroversal:respawn_args

tellraw @s [\
    {"text":"Welcome to the ","color":"green"},\
    {"text":"Wide Area Necroversal","color":"#00DDFF"},\
    {"text":" datapack!","color":"green"},\
    {"text":" There is a world border located at the"},\
    {"text":" spawnRadius","color":"#FFDD00"},\
    {"text":" gamerule ("},\
    {"storage":"wanecroversal:respawn_args","nbt":"radius","color":"#FFDD00"},\
    {"text":" blocks out from","color":"green"},\
    {"text":" 0,0","color":"#FFDD00"},\
    {"text":" in the Overworld). When you die, you will respawn anywhere in this area.","color":"green"},\
    {"text":" Beds and anchors do","color":"#FF8800"},\
    {"text":" not","color":"red"},\
    {"text":" work.","color":"#FF8800"},\
    {"text":" There are also strongholds throughout the world every few thousand blocks.","color":"green"}\
]

scoreboard players set @s wanecroversal.seen 1
