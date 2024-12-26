# c 2024-12-21
# m 2024-12-26

execute as @a[scores={wanecroversal.deaths=1..}] at @s run function wanecroversal:died

execute store result score $radius wanecroversal.values run gamerule spawnRadius
execute if score $radius wanecroversal.values > $maxDim wanecroversal.values run execute store result score $radius wanecroversal.values run scoreboard players get $maxDim wanecroversal.values
execute store result score $diameter wanecroversal.values run scoreboard players get $radius wanecroversal.values
scoreboard players operation $diameter wanecroversal.values *= $two wanecroversal.values
scoreboard players add $diameter wanecroversal.values 1
execute store result storage wanecroversal:border_args diameter int 1 run scoreboard players get $diameter wanecroversal.values
function wanecroversal:border with storage wanecroversal:border_args
