# c 2024-12-21
# m 2024-12-27

execute as @p unless score @s wanecroversal.seen matches 1 \
    run scoreboard players set @s wanecroversal.seen 0
execute as @p[scores={wanecroversal.seen=0}] \
    run function wanecroversal:init

execute as @p[scores={wanecroversal.deaths=1..}] \
    run function wanecroversal:died

execute store result storage wanecroversal:respawn_args radius int 1 \
    run gamerule spawnRadius
execute as @p[scores={wanecroversal.respawn=1..}] \
    run execute in minecraft:overworld \
    run function wanecroversal:respawn with storage wanecroversal:respawn_args
