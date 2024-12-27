# c 2024-12-26
# m 2024-12-26

worldborder center 0.5 0.5

execute store result score $borderCurrent wanecroversal.values \
    run scoreboard players get $borderMax wanecroversal.values
execute store result storage wanecroversal:border_args width int 1 \
    run scoreboard players get $borderMax wanecroversal.values
