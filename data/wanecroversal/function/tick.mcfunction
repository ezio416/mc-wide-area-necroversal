# c 2024-12-21
# m 2024-12-26

execute as @p unless score @s wanecroversal.seen matches 1 run scoreboard players set @s wanecroversal.seen 0
execute as @p[scores={wanecroversal.seen=0}] at @s run function wanecroversal:init
execute as @p[scores={wanecroversal.deaths=1..}] at @s run function wanecroversal:died

execute store result score $radius wanecroversal.values \
    run gamerule spawnRadius
execute if score $radius wanecroversal.values > $radiusMax wanecroversal.values \
    run execute store result score $radius wanecroversal.values \
    run scoreboard players get $radiusMax wanecroversal.values
execute store result score $borderOverworld wanecroversal.values \
    run scoreboard players get $radius wanecroversal.values
scoreboard players operation $borderOverworld wanecroversal.values *= $2 wanecroversal.values
scoreboard players add $borderOverworld wanecroversal.values 1
execute store result score $borderNether wanecroversal.values run scoreboard players get $borderOverworld wanecroversal.values
scoreboard players operation $borderNether wanecroversal.values /= $8 wanecroversal.values

execute as @p run function wanecroversal:dimensions/detect
function wanecroversal:border with storage wanecroversal:border_args
