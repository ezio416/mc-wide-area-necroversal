# c 2024-12-21
# m 2024-12-26

execute as @a unless score @s wanecroversal.seen matches 1 run scoreboard players set @s wanecroversal.seen 0
execute as @a[scores={wanecroversal.seen=0}] at @s run function wanecroversal:init
execute as @a[scores={wanecroversal.deaths=1..}] at @s run function wanecroversal:died

execute store result score $radius wanecroversal.values \
    run gamerule spawnRadius
execute if score $radius wanecroversal.values > $maxRadius wanecroversal.values \
    run execute store result score $radius wanecroversal.values \
    run scoreboard players get $maxRadius wanecroversal.values
execute store result score $diameter wanecroversal.values \
    run scoreboard players get $radius wanecroversal.values
scoreboard players operation $diameter wanecroversal.values *= $two wanecroversal.values
scoreboard players add $diameter wanecroversal.values 1

execute in minecraft:overworld if entity @p[distance=0..] \
    run execute store result storage wanecroversal:border_args diameter int 1 \
    run scoreboard players get $diameter wanecroversal.values
execute in minecraft:overworld unless entity @p[distance=0..] \
    run execute store result storage wanecroversal:border_args diameter int 1 \
    run scoreboard players get $maxRadius wanecroversal.values
function wanecroversal:border with storage wanecroversal:border_args
