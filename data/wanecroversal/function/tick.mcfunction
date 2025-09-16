# c 2024-12-21
# m 2025-09-15

execute as @p unless score @s wanecroversal.seen matches 1 \
    run scoreboard players set @s wanecroversal.seen 0
execute as @p[scores={wanecroversal.seen=0}] \
    run function wanecroversal:init

execute as @p[scores={wanecroversal.deaths=1..}] \
    run function wanecroversal:died

execute as @p run scoreboard players enable @s wanecroversal.radius

execute as @p \
    run execute store result storage wanecroversal:respawn_args radius int 1 \
    run scoreboard players get @s wanecroversal.radius
execute as @p \
    run execute store result score $borderOverworld wanecroversal.values \
    run scoreboard players get @s wanecroversal.radius

execute as @p[scores={wanecroversal.respawn=1..}] \
    run execute in minecraft:overworld \
    run function wanecroversal:respawn with storage wanecroversal:respawn_args

scoreboard players operation $borderOverworld wanecroversal.values *= $2 wanecroversal.values
scoreboard players add $borderOverworld wanecroversal.values 1
execute store result score $borderNether wanecroversal.values \
    run scoreboard players get $borderOverworld wanecroversal.values
scoreboard players operation $borderNether wanecroversal.values /= $8 wanecroversal.values

execute as @p run function wanecroversal:dimensions/detect
execute as @p run function wanecroversal:border with storage wanecroversal:border_args
