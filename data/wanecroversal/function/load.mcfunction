# c 2024-12-21
# m 2024-12-26

scoreboard objectives add wanecroversal.deaths deathCount

scoreboard objectives add wanecroversal.values dummy
scoreboard players set $two wanecroversal.values 2
scoreboard players set $maxRadius wanecroversal.values 29999984

tellraw @a [\
    {"text":"[Datapack]"},\
    {"text":" Wide Area Necroversal","color":"#00DDFF"},\
    {"text":" enabled","color":"green"}\
]
