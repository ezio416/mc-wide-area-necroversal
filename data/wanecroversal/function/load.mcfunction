# c 2024-12-21
# m 2024-12-26

scoreboard objectives add wanecroversal.deaths deathCount
scoreboard objectives add wanecroversal.seen dummy

scoreboard objectives add wanecroversal.values dummy
scoreboard players set $2 wanecroversal.values 2
scoreboard players set $8 wanecroversal.values 8
scoreboard players set $borderMax wanecroversal.values 59999968
scoreboard players set $radiusMax wanecroversal.values 29999983

tellraw @a [\
    {"text":"[Datapack]"},\
    {"text":" Wide Area Necroversal","color":"#00DDFF"},\
    {"text":" enabled","color":"green"}\
]
