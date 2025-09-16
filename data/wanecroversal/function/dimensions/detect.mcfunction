# c 2024-12-26
# m 2025-09-15

execute if data entity @s[nbt={Dimension:"minecraft:overworld"}] Dimension \
    run function wanecroversal:dimensions/overworld

execute if data entity @s[nbt={Dimension:"minecraft:the_nether"}] Dimension \
    run function wanecroversal:dimensions/nether

execute if data entity @s[nbt=!{Dimension:"minecraft:overworld"}] Dimension \
    if data entity @s[nbt=!{Dimension:"minecraft:the_nether"}] Dimension \
        run function wanecroversal:dimensions/other
