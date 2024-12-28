# c 2024-12-21
# m 2024-12-27

spawnpoint @s 0 0 0

execute store result storage wanecroversal:respawn_args radius int 1 \
    run gamerule spawnRadius

execute if entity @s[nbt={Health:20f}, scores={wanecroversal.deaths=1..}] \
    run function wanecroversal:respawn_died
