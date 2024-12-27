# c 2024-12-26
# m 2024-12-26

worldborder center 4.0 4.0

execute store result score $borderCurrent wanecroversal.values \
    run scoreboard players get $borderNether wanecroversal.values
execute store result storage wanecroversal:border_args width int 1 \
    run scoreboard players get $borderNether wanecroversal.values
